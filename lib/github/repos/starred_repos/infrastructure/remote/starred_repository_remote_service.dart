import '../../../../core/core.dart';
import '../../../core/core.dart';

class StarredReposRemoteService extends ReposRemoteService {
  StarredReposRemoteService({
    required super.dio,
    required super.headersCache,
  });

  Future<RemoteResponse<List<RepositoryDTO>>> getStarredRepos({
    required ReposParamsDTO params,
  }) async =>
      super.getPage(
        requestUri: Uri.https(
          'api.github.com',
          '/user/starred',
          params.toJson(),
        ),
        jsonDataSelector: (json) => json as List<dynamic>,
      );
}
