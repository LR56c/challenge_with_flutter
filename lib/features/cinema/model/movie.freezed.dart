// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get sinopsis => throw _privateConstructorUsedError;
  String get pegiImageUrl => throw _privateConstructorUsedError;
  String get movieImageUrl => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {String id,
      String title,
      String sinopsis,
      String pegiImageUrl,
      String movieImageUrl,
      String category,
      String director,
      String language,
      int duration});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sinopsis = null,
    Object? pegiImageUrl = null,
    Object? movieImageUrl = null,
    Object? category = null,
    Object? director = null,
    Object? language = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sinopsis: null == sinopsis
          ? _value.sinopsis
          : sinopsis // ignore: cast_nullable_to_non_nullable
              as String,
      pegiImageUrl: null == pegiImageUrl
          ? _value.pegiImageUrl
          : pegiImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieImageUrl: null == movieImageUrl
          ? _value.movieImageUrl
          : movieImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String sinopsis,
      String pegiImageUrl,
      String movieImageUrl,
      String category,
      String director,
      String language,
      int duration});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sinopsis = null,
    Object? pegiImageUrl = null,
    Object? movieImageUrl = null,
    Object? category = null,
    Object? director = null,
    Object? language = null,
    Object? duration = null,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sinopsis: null == sinopsis
          ? _value.sinopsis
          : sinopsis // ignore: cast_nullable_to_non_nullable
              as String,
      pegiImageUrl: null == pegiImageUrl
          ? _value.pegiImageUrl
          : pegiImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      movieImageUrl: null == movieImageUrl
          ? _value.movieImageUrl
          : movieImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  const _$MovieImpl(
      {required this.id,
      required this.title,
      required this.sinopsis,
      required this.pegiImageUrl,
      required this.movieImageUrl,
      required this.category,
      required this.director,
      required this.language,
      required this.duration});

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String sinopsis;
  @override
  final String pegiImageUrl;
  @override
  final String movieImageUrl;
  @override
  final String category;
  @override
  final String director;
  @override
  final String language;
  @override
  final int duration;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, sinopsis: $sinopsis, pegiImageUrl: $pegiImageUrl, movieImageUrl: $movieImageUrl, category: $category, director: $director, language: $language, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sinopsis, sinopsis) ||
                other.sinopsis == sinopsis) &&
            (identical(other.pegiImageUrl, pegiImageUrl) ||
                other.pegiImageUrl == pegiImageUrl) &&
            (identical(other.movieImageUrl, movieImageUrl) ||
                other.movieImageUrl == movieImageUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, sinopsis,
      pegiImageUrl, movieImageUrl, category, director, language, duration);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final String id,
      required final String title,
      required final String sinopsis,
      required final String pegiImageUrl,
      required final String movieImageUrl,
      required final String category,
      required final String director,
      required final String language,
      required final int duration}) = _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get sinopsis;
  @override
  String get pegiImageUrl;
  @override
  String get movieImageUrl;
  @override
  String get category;
  @override
  String get director;
  @override
  String get language;
  @override
  int get duration;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
