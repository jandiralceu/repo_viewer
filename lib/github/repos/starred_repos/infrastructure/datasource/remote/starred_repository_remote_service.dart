import 'package:dio/dio.dart';

import '../../../../../../core/core.dart';
import '../../../../../core/core.dart';

class StarredReposRemoteService {
  final Dio _dio;
  final HeadersCache _headersCache;

  StarredReposRemoteService({
    required Dio dio,
    required HeadersCache headersCache,
  })  : _dio = dio,
        _headersCache = headersCache;

  Future<RemoteResponse<List<RepositoryDTO>>> getStarredRepositories(
    int page,
  ) async {
    final requestUri = Uri.https(
      'api.github.com',
      '/user/starred',
      {
        'page': page.toString(),
        'per_page': PaginationConfig.itemsPerPage.toString(),
      }, // TODO: Create a model for it.
    );

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

        final repositories = (response.data as List<dynamic>)
            .map((e) => RepositoryDTO.fromJson(e as Map<String, dynamic>))
            .toList();

        return RemoteResponse.withNewData(
          repositories,
          maxPage: headers.link?.maxPage ?? 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return RemoteResponse.noConnection(
          maxPage: previousHeaders?.link?.maxPage ?? 0,
        );
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
