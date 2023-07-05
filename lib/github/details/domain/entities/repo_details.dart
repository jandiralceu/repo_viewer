import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_details.freezed.dart';

@freezed
class RepoDetails with _$RepoDetails {
  const RepoDetails._();

  const factory RepoDetails({
    required bool isStarred,
    required String htmlContent,
    required String repositoryFullname,
  }) = _RepoDetails;
}
