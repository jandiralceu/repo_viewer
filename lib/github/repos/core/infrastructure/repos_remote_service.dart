import 'package:dio/dio.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';

abstract class ReposRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  ReposRemoteService({
    required Dio dio,
    required GithubHeadersCache headersCache,
  })  : _dio = dio,
        _headersCache = headersCache;

  Future<RemoteResponse<List<RepositoryDTO>>> getPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          },
        ),
      );

      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: previousHeaders?.link?.maxPage ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = RemoteHeaders.parse(response);

        await _headersCache.saveHeaders(requestUri, headers);

        final repositories = jsonDataSelector(response.data)
            .map((e) => RepositoryDTO.fromJson(e as Map<String, dynamic>))
            .toList();

        return RemoteResponse.withNewData(
          repositories,
          maxPage: headers.link?.maxPage ?? 1,
        );
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
}
