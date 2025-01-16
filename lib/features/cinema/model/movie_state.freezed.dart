// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Movie movie, List<Show> shows) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Movie movie, List<Show> shows)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Movie movie, List<Show> shows)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieError value) error,
    required TResult Function(MovieData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieLoading value)? loading,
    TResult? Function(MovieError value)? error,
    TResult? Function(MovieData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieError value)? error,
    TResult Function(MovieData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MovieLoadingImplCopyWith<$Res> {
  factory _$$MovieLoadingImplCopyWith(
          _$MovieLoadingImpl value, $Res Function(_$MovieLoadingImpl) then) =
      __$$MovieLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieLoadingImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieLoadingImpl>
    implements _$$MovieLoadingImplCopyWith<$Res> {
  __$$MovieLoadingImplCopyWithImpl(
      _$MovieLoadingImpl _value, $Res Function(_$MovieLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MovieLoadingImpl implements MovieLoading {
  const _$MovieLoadingImpl();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Movie movie, List<Show> shows) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Movie movie, List<Show> shows)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Movie movie, List<Show> shows)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieError value) error,
    required TResult Function(MovieData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieLoading value)? loading,
    TResult? Function(MovieError value)? error,
    TResult? Function(MovieData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieError value)? error,
    TResult Function(MovieData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieLoading implements MovieState {
  const factory MovieLoading() = _$MovieLoadingImpl;
}

/// @nodoc
abstract class _$$MovieErrorImplCopyWith<$Res> {
  factory _$$MovieErrorImplCopyWith(
          _$MovieErrorImpl value, $Res Function(_$MovieErrorImpl) then) =
      __$$MovieErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieErrorImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieErrorImpl>
    implements _$$MovieErrorImplCopyWith<$Res> {
  __$$MovieErrorImplCopyWithImpl(
      _$MovieErrorImpl _value, $Res Function(_$MovieErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MovieErrorImpl implements MovieError {
  const _$MovieErrorImpl();

  @override
  String toString() {
    return 'MovieState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Movie movie, List<Show> shows) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Movie movie, List<Show> shows)? data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Movie movie, List<Show> shows)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieError value) error,
    required TResult Function(MovieData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieLoading value)? loading,
    TResult? Function(MovieError value)? error,
    TResult? Function(MovieData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieError value)? error,
    TResult Function(MovieData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieError implements MovieState {
  const factory MovieError() = _$MovieErrorImpl;
}

/// @nodoc
abstract class _$$MovieDataImplCopyWith<$Res> {
  factory _$$MovieDataImplCopyWith(
          _$MovieDataImpl value, $Res Function(_$MovieDataImpl) then) =
      __$$MovieDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie, List<Show> shows});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$MovieDataImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieDataImpl>
    implements _$$MovieDataImplCopyWith<$Res> {
  __$$MovieDataImplCopyWithImpl(
      _$MovieDataImpl _value, $Res Function(_$MovieDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? shows = null,
  }) {
    return _then(_$MovieDataImpl(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      null == shows
          ? _value._shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$MovieDataImpl implements MovieData {
  const _$MovieDataImpl(this.movie, final List<Show> shows) : _shows = shows;

  @override
  final Movie movie;
  final List<Show> _shows;
  @override
  List<Show> get shows {
    if (_shows is EqualUnmodifiableListView) return _shows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shows);
  }

  @override
  String toString() {
    return 'MovieState.data(movie: $movie, shows: $shows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDataImpl &&
            (identical(other.movie, movie) || other.movie == movie) &&
            const DeepCollectionEquality().equals(other._shows, _shows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, movie, const DeepCollectionEquality().hash(_shows));

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDataImplCopyWith<_$MovieDataImpl> get copyWith =>
      __$$MovieDataImplCopyWithImpl<_$MovieDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(Movie movie, List<Show> shows) data,
  }) {
    return data(movie, shows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(Movie movie, List<Show> shows)? data,
  }) {
    return data?.call(movie, shows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(Movie movie, List<Show> shows)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(movie, shows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieLoading value) loading,
    required TResult Function(MovieError value) error,
    required TResult Function(MovieData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieLoading value)? loading,
    TResult? Function(MovieError value)? error,
    TResult? Function(MovieData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieLoading value)? loading,
    TResult Function(MovieError value)? error,
    TResult Function(MovieData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MovieData implements MovieState {
  const factory MovieData(final Movie movie, final List<Show> shows) =
      _$MovieDataImpl;

  Movie get movie;
  List<Show> get shows;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDataImplCopyWith<_$MovieDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
