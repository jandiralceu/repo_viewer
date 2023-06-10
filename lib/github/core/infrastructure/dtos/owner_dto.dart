import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'owner_dto.freezed.dart';
part 'owner_dto.g.dart';

/// Represent the API owner return
@freezed
class OwnerDTO with _$OwnerDTO {
  const OwnerDTO._();

  /// [OwnerDTO] default constructor
  const factory OwnerDTO({
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _OwnerDTO;

  /// Creates an [OwnerDTO] instance from a JSON
  factory OwnerDTO.fromJson(Map<String, dynamic> json) =>
      _$OwnerDTOFromJson(json);

  /// Creates an [OwnerDTO] instance from an [Owner] domain
  factory OwnerDTO.fromDomain(Owner _) => OwnerDTO(
        name: _.name,
        avatarUrl: _.avatarUrl,
      );

  /// Converts an [OwnerDTO] to an [Owner] domain
  Owner toDomain() => Owner(
        name: name,
        avatarUrl: avatarUrl,
      );
}
