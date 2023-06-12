import 'package:dartz/dartz.dart';

import '../../../../../core/core.dart';
import '../../../../core/core.dart';
import '../datasource/datasource.dart';

/// Starred repos repository
class StarredReposRepository {
  final StarredRepositoryRemoteService _remoteService;

  // TODO: Local service

  /// [StarredReposRepository] default constructor
  StarredReposRepository({
    required StarredRepositoryRemoteService remoteService,
  }) : _remoteService = remoteService;

  Future<Either<GithubFailure, Fresh<List<Repository>>>> getStarredRepositories(
    int page,
  ) async {
    try {
      final response = await _remoteService.getStarredRepositories(page);

      return right(
        response.when(
          // TODO: Local service
          noConnection: (maxPage) {
            return Fresh.no([], isNextPageAvailable: page < maxPage);
          },
          // TODO: Local service
          notModified: (maxPage) {
            return Fresh.yes([], isNextPageAvailable: page < maxPage);
          },
          withNewData: (data, maxPage) {
            // TODO: Save data in the local service

            return Fresh.yes(
              RepositoryDTO.toDomainList(data),
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
