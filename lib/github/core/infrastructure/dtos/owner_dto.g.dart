// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OwnerDTO _$$_OwnerDTOFromJson(Map<String, dynamic> json) => _$_OwnerDTO(
      name: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$_OwnerDTOToJson(_$_OwnerDTO instance) =>
    <String, dynamic>{
      'login': instance.name,
      'avatar_url': instance.avatarUrl,
    };
