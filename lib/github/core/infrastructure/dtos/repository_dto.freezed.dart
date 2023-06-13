// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryDTO _$RepositoryDTOFromJson(Map<String, dynamic> json) {
  return _RepositoryDTO.fromJson(json);
}

/// @nodoc
mixin _$RepositoryDTO {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  OwnerDTO get owner => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryDTOCopyWith<RepositoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDTOCopyWith<$Res> {
  factory $RepositoryDTOCopyWith(
          RepositoryDTO value, $Res Function(RepositoryDTO) then) =
      _$RepositoryDTOCopyWithImpl<$Res, RepositoryDTO>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'owner') OwnerDTO owner,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'stargazers_count') int stars});

  $OwnerDTOCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryDTOCopyWithImpl<$Res, $Val extends RepositoryDTO>
    implements $RepositoryDTOCopyWith<$Res> {
  _$RepositoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? fullName = null,
    Object? stars = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerDTO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerDTOCopyWith<$Res> get owner {
    return $OwnerDTOCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RepositoryDTOCopyWith<$Res>
    implements $RepositoryDTOCopyWith<$Res> {
  factory _$$_RepositoryDTOCopyWith(
          _$_RepositoryDTO value, $Res Function(_$_RepositoryDTO) then) =
      __$$_RepositoryDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'owner') OwnerDTO owner,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'stargazers_count') int stars});

  @override
  $OwnerDTOCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_RepositoryDTOCopyWithImpl<$Res>
    extends _$RepositoryDTOCopyWithImpl<$Res, _$_RepositoryDTO>
    implements _$$_RepositoryDTOCopyWith<$Res> {
  __$$_RepositoryDTOCopyWithImpl(
      _$_RepositoryDTO _value, $Res Function(_$_RepositoryDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? fullName = null,
    Object? stars = null,
  }) {
    return _then(_$_RepositoryDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerDTO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryDTO extends _RepositoryDTO {
  const _$_RepositoryDTO(
      {required this.name,
      @JsonKey(name: 'owner') required this.owner,
      @JsonKey(fromJson: _descriptionFromJson) required this.description,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'stargazers_count') required this.stars})
      : super._();

  factory _$_RepositoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryDTOFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'owner')
  final OwnerDTO owner;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  final String description;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stars;

  @override
  String toString() {
    return 'RepositoryDTO(name: $name, owner: $owner, description: $description, fullName: $fullName, stars: $stars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.stars, stars) || other.stars == stars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, owner, description, fullName, stars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryDTOCopyWith<_$_RepositoryDTO> get copyWith =>
      __$$_RepositoryDTOCopyWithImpl<_$_RepositoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryDTOToJson(
      this,
    );
  }
}

abstract class _RepositoryDTO extends RepositoryDTO {
  const factory _RepositoryDTO(
      {required final String name,
      @JsonKey(name: 'owner')
          required final OwnerDTO owner,
      @JsonKey(fromJson: _descriptionFromJson)
          required final String description,
      @JsonKey(name: 'full_name')
          required final String fullName,
      @JsonKey(name: 'stargazers_count')
          required final int stars}) = _$_RepositoryDTO;
  const _RepositoryDTO._() : super._();

  factory _RepositoryDTO.fromJson(Map<String, dynamic> json) =
      _$_RepositoryDTO.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'owner')
  OwnerDTO get owner;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  String get description;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stars;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryDTOCopyWith<_$_RepositoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
