import 'package:dio/dio.dart';

import '../../../../../core/core.dart';

class StarredRepositoryRemoteService {
  final Dio _dio;

  StarredRepositoryRemoteService({
    required Dio dio,
  }) : _dio = dio;

  Future<RemoteResponse<List<RepositoryDTO>>> getStarredRepositories(
    int page,
  ) async {
    throw Error();
  }
}
