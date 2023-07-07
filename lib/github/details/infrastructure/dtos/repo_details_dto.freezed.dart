// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoDetailsDTO _$RepoDetailsDTOFromJson(Map<String, dynamic> json) {
  return _RepoDetailsDTO.fromJson(json);
}

/// @nodoc
mixin _$RepoDetailsDTO {
  @JsonKey(name: 'starred')
  bool get isStarred => throw _privateConstructorUsedError;
  @JsonKey(name: 'html')
  String get htmlContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get repoFullname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoDetailsDTOCopyWith<RepoDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailsDTOCopyWith<$Res> {
  factory $RepoDetailsDTOCopyWith(
          RepoDetailsDTO value, $Res Function(RepoDetailsDTO) then) =
      _$RepoDetailsDTOCopyWithImpl<$Res, RepoDetailsDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'starred') bool isStarred,
      @JsonKey(name: 'html') String htmlContent,
      @JsonKey(name: 'fullName') String repoFullname});
}

/// @nodoc
class _$RepoDetailsDTOCopyWithImpl<$Res, $Val extends RepoDetailsDTO>
    implements $RepoDetailsDTOCopyWith<$Res> {
  _$RepoDetailsDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_RepoDetailsDTOCopyWith<$Res>
    implements $RepoDetailsDTOCopyWith<$Res> {
  factory _$$_RepoDetailsDTOCopyWith(
          _$_RepoDetailsDTO value, $Res Function(_$_RepoDetailsDTO) then) =
      __$$_RepoDetailsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'starred') bool isStarred,
      @JsonKey(name: 'html') String htmlContent,
      @JsonKey(name: 'fullName') String repoFullname});
}

/// @nodoc
class __$$_RepoDetailsDTOCopyWithImpl<$Res>
    extends _$RepoDetailsDTOCopyWithImpl<$Res, _$_RepoDetailsDTO>
    implements _$$_RepoDetailsDTOCopyWith<$Res> {
  __$$_RepoDetailsDTOCopyWithImpl(
      _$_RepoDetailsDTO _value, $Res Function(_$_RepoDetailsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarred = null,
    Object? htmlContent = null,
    Object? repoFullname = null,
  }) {
    return _then(_$_RepoDetailsDTO(
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
@JsonSerializable()
class _$_RepoDetailsDTO extends _RepoDetailsDTO {
  const _$_RepoDetailsDTO(
      {@JsonKey(name: 'starred') required this.isStarred,
      @JsonKey(name: 'html') required this.htmlContent,
      @JsonKey(name: 'fullName') required this.repoFullname})
      : super._();

  factory _$_RepoDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RepoDetailsDTOFromJson(json);

  @override
  @JsonKey(name: 'starred')
  final bool isStarred;
  @override
  @JsonKey(name: 'html')
  final String htmlContent;
  @override
  @JsonKey(name: 'fullName')
  final String repoFullname;

  @override
  String toString() {
    return 'RepoDetailsDTO(isStarred: $isStarred, htmlContent: $htmlContent, repoFullname: $repoFullname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoDetailsDTO &&
            (identical(other.isStarred, isStarred) ||
                other.isStarred == isStarred) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent) &&
            (identical(other.repoFullname, repoFullname) ||
                other.repoFullname == repoFullname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isStarred, htmlContent, repoFullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepoDetailsDTOCopyWith<_$_RepoDetailsDTO> get copyWith =>
      __$$_RepoDetailsDTOCopyWithImpl<_$_RepoDetailsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoDetailsDTOToJson(
      this,
    );
  }
}

abstract class _RepoDetailsDTO extends RepoDetailsDTO {
  const factory _RepoDetailsDTO(
          {@JsonKey(name: 'starred') required final bool isStarred,
          @JsonKey(name: 'html') required final String htmlContent,
          @JsonKey(name: 'fullName') required final String repoFullname}) =
      _$_RepoDetailsDTO;
  const _RepoDetailsDTO._() : super._();

  factory _RepoDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$_RepoDetailsDTO.fromJson;

  @override
  @JsonKey(name: 'starred')
  bool get isStarred;
  @override
  @JsonKey(name: 'html')
  String get htmlContent;
  @override
  @JsonKey(name: 'fullName')
  String get repoFullname;
  @override
  @JsonKey(ignore: true)
  _$$_RepoDetailsDTOCopyWith<_$_RepoDetailsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
