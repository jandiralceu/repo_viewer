import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'repo_details_dto.freezed.dart';
part 'repo_details_dto.g.dart';

@freezed
class RepoDetailsDTO with _$RepoDetailsDTO {
  const RepoDetailsDTO._();

  const factory RepoDetailsDTO({
    @JsonKey(name: 'starred') required bool isStarred,
    @JsonKey(name: 'html') required String htmlContent,
    @JsonKey(name: 'fullName') required String repositoryFullname,
  }) = _RepoDetailsDTO;

  /// Creates an [RepoDetailsDTO] instance from a JSON
  factory RepoDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoDetailsDTOFromJson(json);

  /// Creates an [RepoDetailsDTO] instance from an [RepoDetails] domain
  factory RepoDetailsDTO.fromDomain(RepoDetails _) => RepoDetailsDTO(
        isStarred: _.isStarred,
        htmlContent: _.htmlContent,
        repositoryFullname: _.repositoryFullname,
      );

  /// Converts an [RepoDetailsDTO] to an [RepoDetails] domain
  RepoDetails toDomain() => RepoDetails(
        isStarred: isStarred,
        htmlContent: htmlContent,
        repositoryFullname: repositoryFullname,
      );
}
