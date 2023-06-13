import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'owner_dto.dart';

part 'repository_dto.freezed.dart';
part 'repository_dto.g.dart';

String _descriptionFromJson(Object? json) {
  return (json as String?) ?? '';
}

/// Represent the API repository return
@freezed
class RepositoryDTO with _$RepositoryDTO {
  const RepositoryDTO._();

  /// [RepositoryDTO] default constructor
  const factory RepositoryDTO({
    required String name,
    @JsonKey(name: 'owner') required OwnerDTO owner,
    @JsonKey(fromJson: _descriptionFromJson) required String description,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'stargazers_count') required int stars,
  }) = _RepositoryDTO;

  /// Creates a [RepositoryDTO] instance from a JSON
  factory RepositoryDTO.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDTOFromJson(json);

  /// Creates a [RepositoryDTO] instance from an [Repository] domain
  factory RepositoryDTO.fromDomain(Repository _) => RepositoryDTO(
        name: _.name,
        stars: _.stars,
        fullName: _.fullName,
        description: _.description,
        owner: OwnerDTO.fromDomain(_.owner),
      );

  /// Converts a [RepositoryDTO] to a [Repository] domain
  Repository toDomain() => Repository(
        name: name,
        stars: stars,
        fullName: fullName,
        description: description,
        owner: owner.toDomain(),
      );
}
