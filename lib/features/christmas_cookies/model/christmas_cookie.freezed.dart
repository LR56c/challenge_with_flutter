// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'christmas_cookie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChristmasCookie _$ChristmasCookieFromJson(Map<String, dynamic> json) {
  return _ChristmasCookie.fromJson(json);
}

/// @nodoc
mixin _$ChristmasCookie {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  DifficultyEnum get difficulty => throw _privateConstructorUsedError;
  double get averageReview => throw _privateConstructorUsedError;

  /// Serializes this ChristmasCookie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChristmasCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChristmasCookieCopyWith<ChristmasCookie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChristmasCookieCopyWith<$Res> {
  factory $ChristmasCookieCopyWith(
          ChristmasCookie value, $Res Function(ChristmasCookie) then) =
      _$ChristmasCookieCopyWithImpl<$Res, ChristmasCookie>;
  @useResult
  $Res call(
      {String id,
      String title,
      String imageUrl,
      int duration,
      DifficultyEnum difficulty,
      double averageReview});
}

/// @nodoc
class _$ChristmasCookieCopyWithImpl<$Res, $Val extends ChristmasCookie>
    implements $ChristmasCookieCopyWith<$Res> {
  _$ChristmasCookieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChristmasCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? duration = null,
    Object? difficulty = null,
    Object? averageReview = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyEnum,
      averageReview: null == averageReview
          ? _value.averageReview
          : averageReview // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChristmasCookieImplCopyWith<$Res>
    implements $ChristmasCookieCopyWith<$Res> {
  factory _$$ChristmasCookieImplCopyWith(_$ChristmasCookieImpl value,
          $Res Function(_$ChristmasCookieImpl) then) =
      __$$ChristmasCookieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String imageUrl,
      int duration,
      DifficultyEnum difficulty,
      double averageReview});
}

/// @nodoc
class __$$ChristmasCookieImplCopyWithImpl<$Res>
    extends _$ChristmasCookieCopyWithImpl<$Res, _$ChristmasCookieImpl>
    implements _$$ChristmasCookieImplCopyWith<$Res> {
  __$$ChristmasCookieImplCopyWithImpl(
      _$ChristmasCookieImpl _value, $Res Function(_$ChristmasCookieImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChristmasCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? duration = null,
    Object? difficulty = null,
    Object? averageReview = null,
  }) {
    return _then(_$ChristmasCookieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyEnum,
      averageReview: null == averageReview
          ? _value.averageReview
          : averageReview // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChristmasCookieImpl implements _ChristmasCookie {
  const _$ChristmasCookieImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.difficulty,
      required this.averageReview});

  factory _$ChristmasCookieImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChristmasCookieImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final int duration;
  @override
  final DifficultyEnum difficulty;
  @override
  final double averageReview;

  @override
  String toString() {
    return 'ChristmasCookie(id: $id, title: $title, imageUrl: $imageUrl, duration: $duration, difficulty: $difficulty, averageReview: $averageReview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChristmasCookieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.averageReview, averageReview) ||
                other.averageReview == averageReview));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, imageUrl, duration, difficulty, averageReview);

  /// Create a copy of ChristmasCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChristmasCookieImplCopyWith<_$ChristmasCookieImpl> get copyWith =>
      __$$ChristmasCookieImplCopyWithImpl<_$ChristmasCookieImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChristmasCookieImplToJson(
      this,
    );
  }
}

abstract class _ChristmasCookie implements ChristmasCookie {
  const factory _ChristmasCookie(
      {required final String id,
      required final String title,
      required final String imageUrl,
      required final int duration,
      required final DifficultyEnum difficulty,
      required final double averageReview}) = _$ChristmasCookieImpl;

  factory _ChristmasCookie.fromJson(Map<String, dynamic> json) =
      _$ChristmasCookieImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  int get duration;
  @override
  DifficultyEnum get difficulty;
  @override
  double get averageReview;

  /// Create a copy of ChristmasCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChristmasCookieImplCopyWith<_$ChristmasCookieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
