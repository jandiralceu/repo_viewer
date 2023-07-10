// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepoDetailsDTO _$$_RepoDetailsDTOFromJson(Map<String, dynamic> json) =>
    _$_RepoDetailsDTO(
      isStarred: json['starred'] as bool,
      htmlContent: json['download_url'] as String,
      repoFullname: json['fullName'] as String,
    );

Map<String, dynamic> _$$_RepoDetailsDTOToJson(_$_RepoDetailsDTO instance) =>
    <String, dynamic>{
      'starred': instance.isStarred,
      'download_url': instance.htmlContent,
      'fullName': instance.repoFullname,
    };
