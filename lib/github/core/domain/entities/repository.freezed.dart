// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Repository {
  Owner get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {Owner owner,
      String name,
      String fullName,
      String description,
      int stars});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? stars = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RepositoryCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$_RepositoryCopyWith(
          _$_Repository value, $Res Function(_$_Repository) then) =
      __$$_RepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Owner owner,
      String name,
      String fullName,
      String description,
      int stars});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_RepositoryCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$_Repository>
    implements _$$_RepositoryCopyWith<$Res> {
  __$$_RepositoryCopyWithImpl(
      _$_Repository _value, $Res Function(_$_Repository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? fullName = null,
    Object? description = null,
    Object? stars = null,
  }) {
    return _then(_$_Repository(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Repository extends _Repository {
  const _$_Repository(
      {required this.owner,
      required this.name,
      required this.fullName,
      required this.description,
      required this.stars})
      : super._();

  @override
  final Owner owner;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final String description;
  @override
  final int stars;

  @override
  String toString() {
    return 'Repository(owner: $owner, name: $name, fullName: $fullName, description: $description, stars: $stars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repository &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stars, stars) || other.stars == stars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, owner, name, fullName, description, stars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      __$$_RepositoryCopyWithImpl<_$_Repository>(this, _$identity);
}

abstract class _Repository extends Repository {
  const factory _Repository(
      {required final Owner owner,
      required final String name,
      required final String fullName,
      required final String description,
      required final int stars}) = _$_Repository;
  const _Repository._() : super._();

  @override
  Owner get owner;
  @override
  String get name;
  @override
  String get fullName;
  @override
  String get description;
  @override
  int get stars;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      throw _privateConstructorUsedError;
}
