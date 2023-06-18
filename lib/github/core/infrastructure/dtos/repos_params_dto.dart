import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';

part 'repos_params_dto.freezed.dart';
part 'repos_params_dto.g.dart';

@freezed
class ReposParamsDTO with _$ReposParamsDTO {
  // const factory ReposParams() = _ReposParams;
  /// [ReposParamsDTO] default params
  @JsonSerializable(includeIfNull: false)
  const factory ReposParamsDTO({
    @JsonKey(name: 'q') String? query,
    @JsonKey(name: 'page', toJson: _toString) required int page,
    @JsonKey(name: 'per_page', toJson: _toString)
    @Default(PaginationConfig.itemsPerPage)
    int perPage,
  }) = _ReposParamsDTO;

  /// Creates a [ReposParamsDTO] instance from a json
  factory ReposParamsDTO.fromJson(Map<String, dynamic> json) =>
      _$ReposParamsDTOFromJson(json);
}

String? _toString(dynamic value) => value?.toString();
