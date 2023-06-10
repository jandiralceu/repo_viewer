// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryDTO _$$_RepositoryDTOFromJson(Map<String, dynamic> json) =>
    _$_RepositoryDTO(
      name: json['name'] as String,
      owner: OwnerDTO.fromJson(json['owner'] as Map<String, dynamic>),
      description: _descriptionFromJson(json['description']),
      fullName: json['full_name'] as String,
      stars: json['stargazers_count'] as int,
    );

Map<String, dynamic> _$$_RepositoryDTOToJson(_$_RepositoryDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'full_name': instance.fullName,
      'stargazers_count': instance.stars,
    };
