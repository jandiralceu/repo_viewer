import 'package:dartz/dartz.dart';

import '../../../../../core/core.dart';
import '../../../../core/core.dart';
import '../datasource/datasource.dart';

class SearchedReposRepository {
  final SearchedReposRemoteService _remoteService;

  SearchedReposRepository({
    required SearchedReposRemoteService remoteService,
  }) : _remoteService = remoteService;

  Future<Either<GithubFailure, Fresh<List<Repository>>>> getSearchedRepos(
    int page,
    String query,
  ) async {
    try {
      final response = await _remoteService.getSearchedRepos(
        params: ReposParamsDTO(page: page, query: query),
      );

      return right(
        response.maybeWhen(
          withNewData: (data, maxPage) {
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
          orElse: () => Fresh.no([]),
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
