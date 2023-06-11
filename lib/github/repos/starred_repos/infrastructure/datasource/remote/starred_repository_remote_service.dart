import 'package:dio/dio.dart';

import '../../../../../core/core.dart';

class StarredRepositoryRemoteService {
  final Dio _dio;
  final HeadersCache _headersCache;

  StarredRepositoryRemoteService({
    required Dio dio,
    required HeadersCache headersCache,
  })  : _dio = dio,
        _headersCache = headersCache;

  Future<RemoteResponse<List<RepositoryDTO>>> getStarredRepositories(
    int page,
  ) async {
    throw Error();
  }
}
