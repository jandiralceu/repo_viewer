// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OwnerDTO _$OwnerDTOFromJson(Map<String, dynamic> json) {
  return _OwnerDTO.fromJson(json);
}

/// @nodoc
mixin _$OwnerDTO {
  @JsonKey(name: 'login')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerDTOCopyWith<OwnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDTOCopyWith<$Res> {
  factory $OwnerDTOCopyWith(OwnerDTO value, $Res Function(OwnerDTO) then) =
      _$OwnerDTOCopyWithImpl<$Res, OwnerDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$OwnerDTOCopyWithImpl<$Res, $Val extends OwnerDTO>
    implements $OwnerDTOCopyWith<$Res> {
  _$OwnerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerDTOCopyWith<$Res> implements $OwnerDTOCopyWith<$Res> {
  factory _$$_OwnerDTOCopyWith(
          _$_OwnerDTO value, $Res Function(_$_OwnerDTO) then) =
      __$$_OwnerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String name,
      @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$_OwnerDTOCopyWithImpl<$Res>
    extends _$OwnerDTOCopyWithImpl<$Res, _$_OwnerDTO>
    implements _$$_OwnerDTOCopyWith<$Res> {
  __$$_OwnerDTOCopyWithImpl(
      _$_OwnerDTO _value, $Res Function(_$_OwnerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$_OwnerDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerDTO extends _OwnerDTO {
  const _$_OwnerDTO(
      {@JsonKey(name: 'login') required this.name,
      @JsonKey(name: 'avatar_url') required this.avatarUrl})
      : super._();

  factory _$_OwnerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerDTOFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String name;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'OwnerDTO(name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerDTOCopyWith<_$_OwnerDTO> get copyWith =>
      __$$_OwnerDTOCopyWithImpl<_$_OwnerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerDTOToJson(
      this,
    );
  }
}

abstract class _OwnerDTO extends OwnerDTO {
  const factory _OwnerDTO(
          {@JsonKey(name: 'login') required final String name,
          @JsonKey(name: 'avatar_url') required final String avatarUrl}) =
      _$_OwnerDTO;
  const _OwnerDTO._() : super._();

  factory _OwnerDTO.fromJson(Map<String, dynamic> json) = _$_OwnerDTO.fromJson;

  @override
  @JsonKey(name: 'login')
  String get name;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerDTOCopyWith<_$_OwnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
