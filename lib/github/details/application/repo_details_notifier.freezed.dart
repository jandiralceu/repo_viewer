// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_details_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoDetailsState {
  bool get hasStarredStatusChanged => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoDetailsStateCopyWith<RepoDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailsStateCopyWith<$Res> {
  factory $RepoDetailsStateCopyWith(
          RepoDetailsState value, $Res Function(RepoDetailsState) then) =
      _$RepoDetailsStateCopyWithImpl<$Res, RepoDetailsState>;
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class _$RepoDetailsStateCopyWithImpl<$Res, $Val extends RepoDetailsState>
    implements $RepoDetailsStateCopyWith<$Res> {
  _$RepoDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_value.copyWith(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $RepoDetailsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RepoDetailsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$_Initial(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({this.hasStarredStatusChanged = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailsState.initial(hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return initial(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return initial?.call(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends RepoDetailsState {
  const factory _Initial({final bool hasStarredStatusChanged}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $RepoDetailsStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChanged});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$RepoDetailsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$_Loading(
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({this.hasStarredStatusChanged = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailsState.loading(hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return loading(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return loading?.call(hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends RepoDetailsState {
  const factory _Loading({final bool hasStarredStatusChanged}) = _$_Loading;
  const _Loading._() : super._();

  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $RepoDetailsStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged});

  $FreshCopyWith<RepoDetails?, $Res> get repoDetails;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$RepoDetailsStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoDetails = null,
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$_Success(
      null == repoDetails
          ? _value.repoDetails
          : repoDetails // ignore: cast_nullable_to_non_nullable
              as Fresh<RepoDetails?>,
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<RepoDetails?, $Res> get repoDetails {
    return $FreshCopyWith<RepoDetails?, $Res>(_value.repoDetails, (value) {
      return _then(_value.copyWith(repoDetails: value));
    });
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success(this.repoDetails, {this.hasStarredStatusChanged = false})
      : super._();

  @override
  final Fresh<RepoDetails?> repoDetails;
  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailsState.success(repoDetails: $repoDetails, hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.repoDetails, repoDetails) ||
                other.repoDetails == repoDetails) &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, repoDetails, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return success(repoDetails, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return success?.call(repoDetails, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(repoDetails, hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends RepoDetailsState {
  const factory _Success(final Fresh<RepoDetails?> repoDetails,
      {final bool hasStarredStatusChanged}) = _$_Success;
  const _Success._() : super._();

  Fresh<RepoDetails?> get repoDetails;
  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $RepoDetailsStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GithubFailure failure, bool hasStarredStatusChanged});

  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$RepoDetailsStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? hasStarredStatusChanged = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
      hasStarredStatusChanged: null == hasStarredStatusChanged
          ? _value.hasStarredStatusChanged
          : hasStarredStatusChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.failure, {this.hasStarredStatusChanged = false})
      : super._();

  @override
  final GithubFailure failure;
  @override
  @JsonKey()
  final bool hasStarredStatusChanged;

  @override
  String toString() {
    return 'RepoDetailsState.failure(failure: $failure, hasStarredStatusChanged: $hasStarredStatusChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(
                    other.hasStarredStatusChanged, hasStarredStatusChanged) ||
                other.hasStarredStatusChanged == hasStarredStatusChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, hasStarredStatusChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanged) initial,
    required TResult Function(bool hasStarredStatusChanged) loading,
    required TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)
        success,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanged)
        failure,
  }) {
    return failure(this.failure, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChanged)? initial,
    TResult? Function(bool hasStarredStatusChanged)? loading,
    TResult? Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
  }) {
    return failure?.call(this.failure, hasStarredStatusChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanged)? initial,
    TResult Function(bool hasStarredStatusChanged)? loading,
    TResult Function(
            Fresh<RepoDetails?> repoDetails, bool hasStarredStatusChanged)?
        success,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanged)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, hasStarredStatusChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends RepoDetailsState {
  const factory _Failure(final GithubFailure failure,
      {final bool hasStarredStatusChanged}) = _$_Failure;
  const _Failure._() : super._();

  GithubFailure get failure;
  @override
  bool get hasStarredStatusChanged;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
