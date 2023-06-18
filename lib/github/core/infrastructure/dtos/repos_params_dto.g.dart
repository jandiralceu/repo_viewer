// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReposParamsDTO _$$_ReposParamsDTOFromJson(Map<String, dynamic> json) =>
    _$_ReposParamsDTO(
      query: json['q'] as String?,
      page: json['page'] as int,
      perPage: json['per_page'] as int? ?? PaginationConfig.itemsPerPage,
    );

Map<String, dynamic> _$$_ReposParamsDTOToJson(_$_ReposParamsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('q', instance.query);
  writeNotNull('page', _toString(instance.page));
  writeNotNull('per_page', _toString(instance.perPage));
  return val;
}
