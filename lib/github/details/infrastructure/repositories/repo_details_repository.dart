import 'package:dartz/dartz.dart';
import 'package:repo_viewer/github/details/infrastructure/dtos/repo_details_dto.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../local/local.dart';
import '../remote/remote.dart';

class RepoDetailsRepository {
  final RepoDetailsLocalService _localService;
  final RepoDetailsRemoteService _remoteService;

  RepoDetailsRepository(this._localService, this._remoteService);

  Future<Either<GithubFailure, Fresh<RepoDetails?>>> getRepoDetails(
    String repoFullname,
  ) async {
    try {
      final response = await _remoteService.getRepositoryReadme(repoFullname);

      return right(
        await response.when(
          noConnection: () async => Fresh.no(
            await _localService
                .getRepoDetails(repoFullname)
                .then((details) => details?.toDomain()),
          ),
          notModified: (_) async {
            final cachedDetails =
                await _localService.getRepoDetails(repoFullname);
            final isStarred =
                (await _remoteService.getStarredStatus(repoFullname)) ?? false;
            final updatedCachedDetails =
                cachedDetails?.copyWith(isStarred: isStarred);

            return Fresh.yes(updatedCachedDetails?.toDomain());
          },
          withNewData: (htmlContent, _) async {
            final isStarred =
                (await _remoteService.getStarredStatus(repoFullname)) ?? false;

            final dto = RepoDetailsDTO(
              isStarred: isStarred,
              htmlContent: htmlContent,
              repoFullname: repoFullname,
            );

            await _localService.upsertRepoDetails(dto);
            return Fresh.yes(dto.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }

  Future<Either<GithubFailure, Unit?>> switchStarredStatus(
    RepoDetails repoDetails,
  ) async {
    try {
      final response = await _remoteService.switchStarredStatus(
        repoFullname: repoDetails.repoFullname,
        isCurrentlyStarred: repoDetails.isStarred,
      );

      return right(response);
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
