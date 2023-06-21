import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/core.dart';
import '../../../core/core.dart';

part 'paginated_repos_notifier.freezed.dart';

typedef RepositoryGetter
    = Future<Either<GithubFailure, Fresh<List<Repository>>>> Function(int page);

@freezed
class PaginatedReposState with _$PaginatedReposState {
  // const PaginatedReposState._();

  /// Initial State
  const factory PaginatedReposState.initial(
    Fresh<List<Repository>> repos,
  ) = _initial;

  /// Loading state
  const factory PaginatedReposState.loading(
    Fresh<List<Repository>> repos,
    int itemsPerPage,
  ) = _Loading;

  /// Data state
  const factory PaginatedReposState.data(
    Fresh<List<Repository>> repos, {
    required bool isNextPageAvailable,
  }) = _Data;

  /// Failure state
  const factory PaginatedReposState.failure(
    Fresh<List<Repository>> repos,
    GithubFailure failure,
  ) = _Failure;
}

class PaginatedReposNotifier extends StateNotifier<PaginatedReposState> {
  /// [PaginatedReposNotifier] default constructor
  PaginatedReposNotifier() : super(PaginatedReposState.initial(Fresh.yes([])));

  int _page = 1;

  @protected
  Future<void> getNextPage(RepositoryGetter repository) async {
    state = PaginatedReposState.loading(
      state.repos,
      PaginationConfig.itemsPerPage,
    );

    final response = await repository(_page);
    state = response.fold(
      (failure) => PaginatedReposState.failure(state.repos, failure),
      (repos) {
        _page++;

        return PaginatedReposState.data(
          repos.copyWith(
            entity: [...state.repos.entity, ...repos.entity],
          ),
          isNextPageAvailable: repos.isNextPageAvailable,
        );
      },
    );
  }
}
