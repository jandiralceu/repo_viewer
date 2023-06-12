import 'package:dartz/dartz.dart';

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

  Future<Either<GithubFailure, List<Repository>>> getStarredRepositories(
    int page,
  ) async {}
}
