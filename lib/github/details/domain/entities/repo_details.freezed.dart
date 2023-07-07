// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoDetails {
  bool get isStarred => throw _privateConstructorUsedError;
  String get htmlContent => throw _privateConstructorUsedError;
  String get repoFullname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoDetailsCopyWith<RepoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailsCopyWith<$Res> {
  factory $RepoDetailsCopyWith(
          RepoDetails value, $Res Function(RepoDetails) then) =
      _$RepoDetailsCopyWithImpl<$Res, RepoDetails>;
  @useResult
  $Res call({bool isStarred, String htmlContent, String repoFullname});
}

/// @nodoc
class _$RepoDetailsCopyWithImpl<$Res, $Val extends RepoDetails>
    implements $RepoDetailsCopyWith<$Res> {
  _$RepoDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarred = null,
    Object? htmlContent = null,
    Object? repoFullname = null,
  }) {
    return _then(_value.copyWith(
      isStarred: null == isStarred
          ? _value.isStarred
          : isStarred // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
      repoFullname: null == repoFullname
          ? _value.repoFullname
          : repoFullname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepoDetailsCopyWith<$Res>
    implements $RepoDetailsCopyWith<$Res> {
  factory _$$_RepoDetailsCopyWith(
          _$_RepoDetails value, $Res Function(_$_RepoDetails) then) =
      __$$_RepoDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isStarred, String htmlContent, String repoFullname});
}

/// @nodoc
class __$$_RepoDetailsCopyWithImpl<$Res>
    extends _$RepoDetailsCopyWithImpl<$Res, _$_RepoDetails>
    implements _$$_RepoDetailsCopyWith<$Res> {
  __$$_RepoDetailsCopyWithImpl(
      _$_RepoDetails _value, $Res Function(_$_RepoDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarred = null,
    Object? htmlContent = null,
    Object? repoFullname = null,
  }) {
    return _then(_$_RepoDetails(
      isStarred: null == isStarred
          ? _value.isStarred
          : isStarred // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
      repoFullname: null == repoFullname
          ? _value.repoFullname
          : repoFullname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RepoDetails extends _RepoDetails {
  const _$_RepoDetails(
      {required this.isStarred,
      required this.htmlContent,
      required this.repoFullname})
      : super._();

  @override
  final bool isStarred;
  @override
  final String htmlContent;
  @override
  final String repoFullname;

  @override
  String toString() {
    return 'RepoDetails(isStarred: $isStarred, htmlContent: $htmlContent, repoFullname: $repoFullname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoDetails &&
            (identical(other.isStarred, isStarred) ||
                other.isStarred == isStarred) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent) &&
            (identical(other.repoFullname, repoFullname) ||
                other.repoFullname == repoFullname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isStarred, htmlContent, repoFullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepoDetailsCopyWith<_$_RepoDetails> get copyWith =>
      __$$_RepoDetailsCopyWithImpl<_$_RepoDetails>(this, _$identity);
}

abstract class _RepoDetails extends RepoDetails {
  const factory _RepoDetails(
      {required final bool isStarred,
      required final String htmlContent,
      required final String repoFullname}) = _$_RepoDetails;
  const _RepoDetails._() : super._();

  @override
  bool get isStarred;
  @override
  String get htmlContent;
  @override
  String get repoFullname;
  @override
  @JsonKey(ignore: true)
  _$$_RepoDetailsCopyWith<_$_RepoDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
