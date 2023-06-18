// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repos_params_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReposParamsDTO _$ReposParamsDTOFromJson(Map<String, dynamic> json) {
  return _ReposParamsDTO.fromJson(json);
}

/// @nodoc
mixin _$ReposParamsDTO {
  @JsonKey(name: 'q')
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'page', toJson: _toString)
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page', toJson: _toString)
  int get perPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReposParamsDTOCopyWith<ReposParamsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposParamsDTOCopyWith<$Res> {
  factory $ReposParamsDTOCopyWith(
          ReposParamsDTO value, $Res Function(ReposParamsDTO) then) =
      _$ReposParamsDTOCopyWithImpl<$Res, ReposParamsDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String? query,
      @JsonKey(name: 'page', toJson: _toString) int page,
      @JsonKey(name: 'per_page', toJson: _toString) int perPage});
}

/// @nodoc
class _$ReposParamsDTOCopyWithImpl<$Res, $Val extends ReposParamsDTO>
    implements $ReposParamsDTOCopyWith<$Res> {
  _$ReposParamsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReposParamsDTOCopyWith<$Res>
    implements $ReposParamsDTOCopyWith<$Res> {
  factory _$$_ReposParamsDTOCopyWith(
          _$_ReposParamsDTO value, $Res Function(_$_ReposParamsDTO) then) =
      __$$_ReposParamsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'q') String? query,
      @JsonKey(name: 'page', toJson: _toString) int page,
      @JsonKey(name: 'per_page', toJson: _toString) int perPage});
}

/// @nodoc
class __$$_ReposParamsDTOCopyWithImpl<$Res>
    extends _$ReposParamsDTOCopyWithImpl<$Res, _$_ReposParamsDTO>
    implements _$$_ReposParamsDTOCopyWith<$Res> {
  __$$_ReposParamsDTOCopyWithImpl(
      _$_ReposParamsDTO _value, $Res Function(_$_ReposParamsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$_ReposParamsDTO(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ReposParamsDTO implements _ReposParamsDTO {
  const _$_ReposParamsDTO(
      {@JsonKey(name: 'q')
          this.query,
      @JsonKey(name: 'page', toJson: _toString)
          required this.page,
      @JsonKey(name: 'per_page', toJson: _toString)
          this.perPage = PaginationConfig.itemsPerPage});

  factory _$_ReposParamsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReposParamsDTOFromJson(json);

  @override
  @JsonKey(name: 'q')
  final String? query;
  @override
  @JsonKey(name: 'page', toJson: _toString)
  final int page;
  @override
  @JsonKey(name: 'per_page', toJson: _toString)
  final int perPage;

  @override
  String toString() {
    return 'ReposParamsDTO(query: $query, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReposParamsDTO &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, page, perPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReposParamsDTOCopyWith<_$_ReposParamsDTO> get copyWith =>
      __$$_ReposParamsDTOCopyWithImpl<_$_ReposParamsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReposParamsDTOToJson(
      this,
    );
  }
}

abstract class _ReposParamsDTO implements ReposParamsDTO {
  const factory _ReposParamsDTO(
          {@JsonKey(name: 'q') final String? query,
          @JsonKey(name: 'page', toJson: _toString) required final int page,
          @JsonKey(name: 'per_page', toJson: _toString) final int perPage}) =
      _$_ReposParamsDTO;

  factory _ReposParamsDTO.fromJson(Map<String, dynamic> json) =
      _$_ReposParamsDTO.fromJson;

  @override
  @JsonKey(name: 'q')
  String? get query;
  @override
  @JsonKey(name: 'page', toJson: _toString)
  int get page;
  @override
  @JsonKey(name: 'per_page', toJson: _toString)
  int get perPage;
  @override
  @JsonKey(ignore: true)
  _$$_ReposParamsDTOCopyWith<_$_ReposParamsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
