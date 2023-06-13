import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/domain/domain.dart';
import '../../../core/core.dart';
import '../infrastructure/infrastructure.dart';

part 'starred_repos_notifier.freezed.dart';

/// Starred repos state
@freezed
class StarredReposState with _$StarredReposState {
  const StarredReposState._();

  /// Initial State
  const factory StarredReposState.initial(
    Fresh<List<Repository>> repos,
  ) = _initial;

  /// Loading state
  const factory StarredReposState.loading(
    Fresh<List<Repository>> repos,
    int itemsPerPage,
  ) = _Loading;

  /// Data state
  const factory StarredReposState.data(
    Fresh<List<Repository>> repos, {
    required bool isNextPageAvailable,
  }) = _Data;

  /// Failure state
  const factory StarredReposState.failure(
    Fresh<List<Repository>> repos,
    GithubFailure failure,
  ) = _Failure;
}

/// Starred repos notifier
class StarredReposNotifier extends StateNotifier<StarredReposState> {
  final StarredReposRepository _repository;

  StarredReposNotifier(
    this._repository,
  ) : super(StarredReposState.initial(Fresh.yes([])));

  int _page = 1;

  Future<void> getNextStarredReposPage() async {
    state = StarredReposState.loading(
      state.repos,
      PaginationConfig.itemsPerPage,
    );

    final response = await _repository.getStarredRepositories(_page);
    state = response.fold(
      (failure) => StarredReposState.failure(state.repos, failure),
      (repos) {
        _page++;

        return StarredReposState.data(
          repos.copyWith(
            entity: [...state.repos.entity, ...repos.entity],
          ),
          isNextPageAvailable: repos.isNextPageAvailable,
        );
      },
    );
  }
}
