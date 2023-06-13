// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteHeaders _$$_RemoteHeadersFromJson(Map<String, dynamic> json) =>
    _$_RemoteHeaders(
      etag: json['etag'] as String?,
      link: json['link'] == null
          ? null
          : PaginationLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RemoteHeadersToJson(_$_RemoteHeaders instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'link': instance.link?.toJson(),
    };

_$_PaginationLink _$$_PaginationLinkFromJson(Map<String, dynamic> json) =>
    _$_PaginationLink(
      maxPage: json['maxPage'] as int,
    );

Map<String, dynamic> _$$_PaginationLinkToJson(_$_PaginationLink instance) =>
    <String, dynamic>{
      'maxPage': instance.maxPage,
    };
