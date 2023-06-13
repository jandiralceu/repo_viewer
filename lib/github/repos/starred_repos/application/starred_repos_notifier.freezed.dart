// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'starred_repos_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StarredReposState {
  Fresh<List<Repository>> get repos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Repository>> repos) initial,
    required TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)
        loading,
    required TResult Function(
            Fresh<List<Repository>> repos, bool isNextPageAvailable)
        data,
    required TResult Function(
            Fresh<List<Repository>> repos, GithubFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Repository>> repos)? initial,
    TResult? Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult? Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult? Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Repository>> repos)? initial,
    TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StarredReposStateCopyWith<StarredReposState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarredReposStateCopyWith<$Res> {
  factory $StarredReposStateCopyWith(
          StarredReposState value, $Res Function(StarredReposState) then) =
      _$StarredReposStateCopyWithImpl<$Res, StarredReposState>;
  @useResult
  $Res call({Fresh<List<Repository>> repos});

  $FreshCopyWith<List<Repository>, $Res> get repos;
}

/// @nodoc
class _$StarredReposStateCopyWithImpl<$Res, $Val extends StarredReposState>
    implements $StarredReposStateCopyWith<$Res> {
  _$StarredReposStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
  }) {
    return _then(_value.copyWith(
      repos: null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Repository>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<Repository>, $Res> get repos {
    return $FreshCopyWith<List<Repository>, $Res>(_value.repos, (value) {
      return _then(_value.copyWith(repos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_initialCopyWith<$Res>
    implements $StarredReposStateCopyWith<$Res> {
  factory _$$_initialCopyWith(
          _$_initial value, $Res Function(_$_initial) then) =
      __$$_initialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Repository>> repos});

  @override
  $FreshCopyWith<List<Repository>, $Res> get repos;
}

/// @nodoc
class __$$_initialCopyWithImpl<$Res>
    extends _$StarredReposStateCopyWithImpl<$Res, _$_initial>
    implements _$$_initialCopyWith<$Res> {
  __$$_initialCopyWithImpl(_$_initial _value, $Res Function(_$_initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
  }) {
    return _then(_$_initial(
      null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Repository>>,
    ));
  }
}

/// @nodoc

class _$_initial extends _initial {
  const _$_initial(this.repos) : super._();

  @override
  final Fresh<List<Repository>> repos;

  @override
  String toString() {
    return 'StarredReposState.initial(repos: $repos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initial &&
            (identical(other.repos, repos) || other.repos == repos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_initialCopyWith<_$_initial> get copyWith =>
      __$$_initialCopyWithImpl<_$_initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Repository>> repos) initial,
    required TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)
        loading,
    required TResult Function(
            Fresh<List<Repository>> repos, bool isNextPageAvailable)
        data,
    required TResult Function(
            Fresh<List<Repository>> repos, GithubFailure failure)
        failure,
  }) {
    return initial(repos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Repository>> repos)? initial,
    TResult? Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult? Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult? Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
  }) {
    return initial?.call(repos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Repository>> repos)? initial,
    TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(repos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial extends StarredReposState {
  const factory _initial(final Fresh<List<Repository>> repos) = _$_initial;
  const _initial._() : super._();

  @override
  Fresh<List<Repository>> get repos;
  @override
  @JsonKey(ignore: true)
  _$$_initialCopyWith<_$_initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $StarredReposStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Repository>> repos, int itemsPerPage});

  @override
  $FreshCopyWith<List<Repository>, $Res> get repos;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$StarredReposStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$_Loading(
      null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Repository>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.repos, this.itemsPerPage) : super._();

  @override
  final Fresh<List<Repository>> repos;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'StarredReposState.loading(repos: $repos, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.repos, repos) || other.repos == repos) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repos, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Repository>> repos) initial,
    required TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)
        loading,
    required TResult Function(
            Fresh<List<Repository>> repos, bool isNextPageAvailable)
        data,
    required TResult Function(
            Fresh<List<Repository>> repos, GithubFailure failure)
        failure,
  }) {
    return loading(repos, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Repository>> repos)? initial,
    TResult? Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult? Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult? Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
  }) {
    return loading?.call(repos, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Repository>> repos)? initial,
    TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(repos, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends StarredReposState {
  const factory _Loading(
      final Fresh<List<Repository>> repos, final int itemsPerPage) = _$_Loading;
  const _Loading._() : super._();

  @override
  Fresh<List<Repository>> get repos;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res>
    implements $StarredReposStateCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Repository>> repos, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<Repository>, $Res> get repos;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$StarredReposStateCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$_Data(
      null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Repository>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Data extends _Data {
  const _$_Data(this.repos, {required this.isNextPageAvailable}) : super._();

  @override
  final Fresh<List<Repository>> repos;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'StarredReposState.data(repos: $repos, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.repos, repos) || other.repos == repos) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repos, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Repository>> repos) initial,
    required TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)
        loading,
    required TResult Function(
            Fresh<List<Repository>> repos, bool isNextPageAvailable)
        data,
    required TResult Function(
            Fresh<List<Repository>> repos, GithubFailure failure)
        failure,
  }) {
    return data(repos, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Repository>> repos)? initial,
    TResult? Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult? Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult? Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
  }) {
    return data?.call(repos, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Repository>> repos)? initial,
    TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(repos, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data extends StarredReposState {
  const factory _Data(final Fresh<List<Repository>> repos,
      {required final bool isNextPageAvailable}) = _$_Data;
  const _Data._() : super._();

  @override
  Fresh<List<Repository>> get repos;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $StarredReposStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<List<Repository>> repos, GithubFailure failure});

  @override
  $FreshCopyWith<List<Repository>, $Res> get repos;
  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$StarredReposStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<Repository>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
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
  const _$_Failure(this.repos, this.failure) : super._();

  @override
  final Fresh<List<Repository>> repos;
  @override
  final GithubFailure failure;

  @override
  String toString() {
    return 'StarredReposState.failure(repos: $repos, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.repos, repos) || other.repos == repos) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repos, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<Repository>> repos) initial,
    required TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)
        loading,
    required TResult Function(
            Fresh<List<Repository>> repos, bool isNextPageAvailable)
        data,
    required TResult Function(
            Fresh<List<Repository>> repos, GithubFailure failure)
        failure,
  }) {
    return failure(repos, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<Repository>> repos)? initial,
    TResult? Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult? Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult? Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
  }) {
    return failure?.call(repos, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<Repository>> repos)? initial,
    TResult Function(Fresh<List<Repository>> repos, int itemsPerPage)? loading,
    TResult Function(Fresh<List<Repository>> repos, bool isNextPageAvailable)?
        data,
    TResult Function(Fresh<List<Repository>> repos, GithubFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(repos, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends StarredReposState {
  const factory _Failure(
          final Fresh<List<Repository>> repos, final GithubFailure failure) =
      _$_Failure;
  const _Failure._() : super._();

  @override
  Fresh<List<Repository>> get repos;
  GithubFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
