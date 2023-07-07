import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';

import '../../domain/domain.dart';

part 'repo_details_dto.freezed.dart';
part 'repo_details_dto.g.dart';

@freezed
class RepoDetailsDTO with _$RepoDetailsDTO {
  const RepoDetailsDTO._();

  static const lastUsedFieldName = 'lastUsed';

  const factory RepoDetailsDTO({
    @JsonKey(name: 'starred') required bool isStarred,
    @JsonKey(name: 'html') required String htmlContent,
    @JsonKey(name: 'fullName') required String repoFullname,
  }) = _RepoDetailsDTO;

  /// Creates an [RepoDetailsDTO] instance from a JSON
  factory RepoDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoDetailsDTOFromJson(json);

  /// Creates an [RepoDetailsDTO] instance from an [RepoDetails] domain
  factory RepoDetailsDTO.fromDomain(RepoDetails _) => RepoDetailsDTO(
        isStarred: _.isStarred,
        htmlContent: _.htmlContent,
        repoFullname: _.repoFullname,
      );

  ///
  Map<String, dynamic> toSembast() {
    final json = toJson();
    json[lastUsedFieldName] = Timestamp.now();

    return json;
  }

  ///
  factory RepoDetailsDTO.fromSembast(
    RecordSnapshot<String, Map<String, dynamic>> snapshot,
  ) {
    return RepoDetailsDTO.fromJson(snapshot.value);
  }

  /// Converts an [RepoDetailsDTO] to an [RepoDetails] domain
  RepoDetails toDomain() => RepoDetails(
        isStarred: isStarred,
        htmlContent: htmlContent,
        repoFullname: repoFullname,
      );
}
