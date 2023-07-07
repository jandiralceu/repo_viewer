import 'package:dartz/dartz.dart';

import '../../../../../core/core.dart';
import '../../../../core/core.dart';
import '../local/local.dart';
import '../remote/remote.dart';

/// Starred repos repository
class StarredReposRepository {
  final StarredReposRemoteService _remoteService;
  final StarredReposLocalService _localService;

  /// [StarredReposRepository] default constructor
  StarredReposRepository({
    required StarredReposRemoteService remoteService,
    required StarredReposLocalService localService,
  })  : _remoteService = remoteService,
        _localService = localService;

  Future<Either<GithubFailure, Fresh<List<Repository>>>> getStarredRepos(
    int page,
  ) async {
    try {
      final response = await _remoteService.getStarredRepos(
        params: ReposParamsDTO(page: page),
      );

      return right(
        await response.when(
          noConnection: () async {
            return Fresh.no(
              await _localService.getPage(page).then((_) => _.toDomain()),
              isNextPageAvailable:
                  page < await _localService.getLocalPageCount(),
            );
          },
          notModified: (maxPage) async {
            return Fresh.yes(
              await _localService.getPage(page).then((_) => _.toDomain()),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (repos, maxPage) async {
            await _localService.upsertPage(repos: repos, page: page);

            return Fresh.yes(
              repos.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
