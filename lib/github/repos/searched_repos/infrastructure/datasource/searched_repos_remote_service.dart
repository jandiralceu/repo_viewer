import '../../../../core/core.dart';
import '../../../core/core.dart';

class SearchedReposRemoteService extends ReposRemoteService {
  SearchedReposRemoteService({
    required super.dio,
    required super.headersCache,
  });

  Future<RemoteResponse<List<RepositoryDTO>>> getSearchedRepos({
    required ReposParamsDTO params,
  }) async =>
      super.getPage(
        requestUri: Uri.https(
          'api.github.com',
          '/search/repositories',
          params.toJson(),
        ),
        // ignore: avoid_dynamic_calls
        jsonDataSelector: (json) => json['items'] as List<dynamic>,
      );
}
