import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/github/details/infrastructure/repositories/repo_details_repository.dart';

import '../../../core/core.dart';
import '../../core/core.dart';
import '../domain/domain.dart';

part 'repo_details_notifier.freezed.dart';

@freezed
class RepoDetailsState with _$RepoDetailsState {
  const RepoDetailsState._();

  const factory RepoDetailsState.initial({
    @Default(false) bool hasStarredStatusChanged,
  }) = _Initial;

  const factory RepoDetailsState.loading({
    @Default(false) bool hasStarredStatusChanged,
  }) = _Loading;

  const factory RepoDetailsState.success(
    Fresh<RepoDetails?> repoDetails, {
    @Default(false) bool hasStarredStatusChanged,
  }) = _Success;

  const factory RepoDetailsState.failure(
    GithubFailure failure, {
    @Default(false) bool hasStarredStatusChanged,
  }) = _Failure;
}

class RepoDetailsNotifier extends StateNotifier<RepoDetailsState> {
  final RepoDetailsRepository _repository;

  RepoDetailsNotifier(this._repository)
      : super(const RepoDetailsState.initial());

  Future<void> getRepoDetails(String repoFullname) async {
    state = const RepoDetailsState.loading();
    final response = await _repository.getRepoDetails(repoFullname);

    state = response.fold(
      (failure) => RepoDetailsState.failure(failure),
      (result) => RepoDetailsState.success(result),
    );
  }

  Future<void> switchStarredStatus() async {
    state.maybeMap(
      orElse: () {},
      success: (data) async {
        final currentStateCopy = data.copyWith();
        final currentDetails = data.repoDetails.entity;

        if (currentDetails != null) {
          state = data.copyWith.repoDetails(
            entity: currentDetails.copyWith(
              isStarred: !currentDetails.isStarred,
            ),
          );

          final response = await _repository.switchStarredStatus(
            currentDetails,
          );

          response.fold(
            (_) => state = currentStateCopy,
            (result) => state = result == null
                ? currentStateCopy
                : state.copyWith(hasStarredStatusChanged: true),
          );
        }
      },
    );
  }
}
