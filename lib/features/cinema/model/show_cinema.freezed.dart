// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_cinema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowCinema _$ShowCinemaFromJson(Map<String, dynamic> json) {
  return _ShowCinema.fromJson(json);
}

/// @nodoc
mixin _$ShowCinema {
  String get id => throw _privateConstructorUsedError;
  String get movieTitle => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get seatTypes => throw _privateConstructorUsedError;
  List<Show> get shows => throw _privateConstructorUsedError;

  /// Serializes this ShowCinema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShowCinema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowCinemaCopyWith<ShowCinema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCinemaCopyWith<$Res> {
  factory $ShowCinemaCopyWith(
          ShowCinema value, $Res Function(ShowCinema) then) =
      _$ShowCinemaCopyWithImpl<$Res, ShowCinema>;
  @useResult
  $Res call(
      {String id,
      String movieTitle,
      DateTime date,
      String location,
      List<String> seatTypes,
      List<Show> shows});
}

/// @nodoc
class _$ShowCinemaCopyWithImpl<$Res, $Val extends ShowCinema>
    implements $ShowCinemaCopyWith<$Res> {
  _$ShowCinemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowCinema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieTitle = null,
    Object? date = null,
    Object? location = null,
    Object? seatTypes = null,
    Object? shows = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      seatTypes: null == seatTypes
          ? _value.seatTypes
          : seatTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shows: null == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowCinemaImplCopyWith<$Res>
    implements $ShowCinemaCopyWith<$Res> {
  factory _$$ShowCinemaImplCopyWith(
          _$ShowCinemaImpl value, $Res Function(_$ShowCinemaImpl) then) =
      __$$ShowCinemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String movieTitle,
      DateTime date,
      String location,
      List<String> seatTypes,
      List<Show> shows});
}

/// @nodoc
class __$$ShowCinemaImplCopyWithImpl<$Res>
    extends _$ShowCinemaCopyWithImpl<$Res, _$ShowCinemaImpl>
    implements _$$ShowCinemaImplCopyWith<$Res> {
  __$$ShowCinemaImplCopyWithImpl(
      _$ShowCinemaImpl _value, $Res Function(_$ShowCinemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowCinema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieTitle = null,
    Object? date = null,
    Object? location = null,
    Object? seatTypes = null,
    Object? shows = null,
  }) {
    return _then(_$ShowCinemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      seatTypes: null == seatTypes
          ? _value._seatTypes
          : seatTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shows: null == shows
          ? _value._shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowCinemaImpl implements _ShowCinema {
  const _$ShowCinemaImpl(
      {required this.id,
      required this.movieTitle,
      required this.date,
      required this.location,
      required final List<String> seatTypes,
      required final List<Show> shows})
      : _seatTypes = seatTypes,
        _shows = shows;

  factory _$ShowCinemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowCinemaImplFromJson(json);

  @override
  final String id;
  @override
  final String movieTitle;
  @override
  final DateTime date;
  @override
  final String location;
  final List<String> _seatTypes;
  @override
  List<String> get seatTypes {
    if (_seatTypes is EqualUnmodifiableListView) return _seatTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatTypes);
  }

  final List<Show> _shows;
  @override
  List<Show> get shows {
    if (_shows is EqualUnmodifiableListView) return _shows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shows);
  }

  @override
  String toString() {
    return 'ShowCinema(id: $id, movieTitle: $movieTitle, date: $date, location: $location, seatTypes: $seatTypes, shows: $shows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowCinemaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._seatTypes, _seatTypes) &&
            const DeepCollectionEquality().equals(other._shows, _shows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      movieTitle,
      date,
      location,
      const DeepCollectionEquality().hash(_seatTypes),
      const DeepCollectionEquality().hash(_shows));

  /// Create a copy of ShowCinema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowCinemaImplCopyWith<_$ShowCinemaImpl> get copyWith =>
      __$$ShowCinemaImplCopyWithImpl<_$ShowCinemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowCinemaImplToJson(
      this,
    );
  }
}

abstract class _ShowCinema implements ShowCinema {
  const factory _ShowCinema(
      {required final String id,
      required final String movieTitle,
      required final DateTime date,
      required final String location,
      required final List<String> seatTypes,
      required final List<Show> shows}) = _$ShowCinemaImpl;

  factory _ShowCinema.fromJson(Map<String, dynamic> json) =
      _$ShowCinemaImpl.fromJson;

  @override
  String get id;
  @override
  String get movieTitle;
  @override
  DateTime get date;
  @override
  String get location;
  @override
  List<String> get seatTypes;
  @override
  List<Show> get shows;

  /// Create a copy of ShowCinema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowCinemaImplCopyWith<_$ShowCinemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
