// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteHeaders _$RemoteHeadersFromJson(Map<String, dynamic> json) {
  return _RemoteHeaders.fromJson(json);
}

/// @nodoc
mixin _$RemoteHeaders {
  String? get etag => throw _privateConstructorUsedError;
  PaginationLink? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteHeadersCopyWith<RemoteHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteHeadersCopyWith<$Res> {
  factory $RemoteHeadersCopyWith(
          RemoteHeaders value, $Res Function(RemoteHeaders) then) =
      _$RemoteHeadersCopyWithImpl<$Res, RemoteHeaders>;
  @useResult
  $Res call({String? etag, PaginationLink? link});

  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class _$RemoteHeadersCopyWithImpl<$Res, $Val extends RemoteHeaders>
    implements $RemoteHeadersCopyWith<$Res> {
  _$RemoteHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationLinkCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $PaginationLinkCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteHeadersCopyWith<$Res>
    implements $RemoteHeadersCopyWith<$Res> {
  factory _$$_RemoteHeadersCopyWith(
          _$_RemoteHeaders value, $Res Function(_$_RemoteHeaders) then) =
      __$$_RemoteHeadersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? etag, PaginationLink? link});

  @override
  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class __$$_RemoteHeadersCopyWithImpl<$Res>
    extends _$RemoteHeadersCopyWithImpl<$Res, _$_RemoteHeaders>
    implements _$$_RemoteHeadersCopyWith<$Res> {
  __$$_RemoteHeadersCopyWithImpl(
      _$_RemoteHeaders _value, $Res Function(_$_RemoteHeaders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etag = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_RemoteHeaders(
      etag: freezed == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteHeaders extends _RemoteHeaders {
  const _$_RemoteHeaders({this.etag, this.link}) : super._();

  factory _$_RemoteHeaders.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteHeadersFromJson(json);

  @override
  final String? etag;
  @override
  final PaginationLink? link;

  @override
  String toString() {
    return 'RemoteHeaders(etag: $etag, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteHeaders &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etag, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteHeadersCopyWith<_$_RemoteHeaders> get copyWith =>
      __$$_RemoteHeadersCopyWithImpl<_$_RemoteHeaders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteHeadersToJson(
      this,
    );
  }
}

abstract class _RemoteHeaders extends RemoteHeaders {
  const factory _RemoteHeaders(
      {final String? etag, final PaginationLink? link}) = _$_RemoteHeaders;
  const _RemoteHeaders._() : super._();

  factory _RemoteHeaders.fromJson(Map<String, dynamic> json) =
      _$_RemoteHeaders.fromJson;

  @override
  String? get etag;
  @override
  PaginationLink? get link;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteHeadersCopyWith<_$_RemoteHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLink _$PaginationLinkFromJson(Map<String, dynamic> json) {
  return _PaginationLink.fromJson(json);
}

/// @nodoc
mixin _$PaginationLink {
  int get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinkCopyWith<PaginationLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinkCopyWith<$Res> {
  factory $PaginationLinkCopyWith(
          PaginationLink value, $Res Function(PaginationLink) then) =
      _$PaginationLinkCopyWithImpl<$Res, PaginationLink>;
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res, $Val extends PaginationLink>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationLinkCopyWith<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  factory _$$_PaginationLinkCopyWith(
          _$_PaginationLink value, $Res Function(_$_PaginationLink) then) =
      __$$_PaginationLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$_PaginationLinkCopyWithImpl<$Res>
    extends _$PaginationLinkCopyWithImpl<$Res, _$_PaginationLink>
    implements _$$_PaginationLinkCopyWith<$Res> {
  __$$_PaginationLinkCopyWithImpl(
      _$_PaginationLink _value, $Res Function(_$_PaginationLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$_PaginationLink(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationLink extends _PaginationLink {
  const _$_PaginationLink({required this.maxPage}) : super._();

  factory _$_PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationLinkFromJson(json);

  @override
  final int maxPage;

  @override
  String toString() {
    return 'PaginationLink(maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationLink &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationLinkCopyWith<_$_PaginationLink> get copyWith =>
      __$$_PaginationLinkCopyWithImpl<_$_PaginationLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationLinkToJson(
      this,
    );
  }
}

abstract class _PaginationLink extends PaginationLink {
  const factory _PaginationLink({required final int maxPage}) =
      _$_PaginationLink;
  const _PaginationLink._() : super._();

  factory _PaginationLink.fromJson(Map<String, dynamic> json) =
      _$_PaginationLink.fromJson;

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationLinkCopyWith<_$_PaginationLink> get copyWith =>
      throw _privateConstructorUsedError;
}
