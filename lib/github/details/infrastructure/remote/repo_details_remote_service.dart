import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';

class RepoDetailsRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  RepoDetailsRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<String>> getRepositoryReadme(
    String repoFullname,
  ) async {
    final requestUri = Uri.https(
      'api.github.com',
      '/repos/$repoFullname/readme',
    );

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          },
          responseType: ResponseType.plain,
        ),
      );

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(maxPage: 0);
      } else if (response.statusCode == 200) {
        final headers = RemoteHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);

        final htmlContent = response.data as String;

        return RemoteResponse.withNewData(htmlContent, maxPage: 0);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  /// Returns `null` if there's no internet connection
  Future<bool?> getStarredStatus(String repoFullname) async {
    final requestUri = Uri.https(
      'api.github.com',
      '/user/starred/$repoFullname',
    );

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          validateStatus: (status) {
            return (status != null && status >= 200 && status < 400) ||
                status == 404;
          },
        ),
      );

      if (response.statusCode == 204) {
        return true;
      } else if (response.statusCode == 404) {
        return false;
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return null;
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  // Star and unstar a repository
  Future<Unit?> switchStarredStatus({
    required String repoFullname,
    required bool isCurrentlyStarred,
  }) async {
    final requestUri = Uri.https(
      'api.github.com',
      '/user/starred/$repoFullname',
    );

    try {
      final response = await (isCurrentlyStarred
          ? _dio.deleteUri(requestUri)
          : _dio.putUri(requestUri));

      if (response.statusCode == 204) {
        return unit;
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return null;
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
