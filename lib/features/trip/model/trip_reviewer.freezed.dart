// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_reviewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripReviewer _$TripReviewerFromJson(Map<String, dynamic> json) {
  return _TripReviewer.fromJson(json);
}

/// @nodoc
mixin _$TripReviewer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this TripReviewer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripReviewer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripReviewerCopyWith<TripReviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripReviewerCopyWith<$Res> {
  factory $TripReviewerCopyWith(
          TripReviewer value, $Res Function(TripReviewer) then) =
      _$TripReviewerCopyWithImpl<$Res, TripReviewer>;
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      String review,
      double rating,
      String date});
}

/// @nodoc
class _$TripReviewerCopyWithImpl<$Res, $Val extends TripReviewer>
    implements $TripReviewerCopyWith<$Res> {
  _$TripReviewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripReviewer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? review = null,
    Object? rating = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripReviewerImplCopyWith<$Res>
    implements $TripReviewerCopyWith<$Res> {
  factory _$$TripReviewerImplCopyWith(
          _$TripReviewerImpl value, $Res Function(_$TripReviewerImpl) then) =
      __$$TripReviewerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      String review,
      double rating,
      String date});
}

/// @nodoc
class __$$TripReviewerImplCopyWithImpl<$Res>
    extends _$TripReviewerCopyWithImpl<$Res, _$TripReviewerImpl>
    implements _$$TripReviewerImplCopyWith<$Res> {
  __$$TripReviewerImplCopyWithImpl(
      _$TripReviewerImpl _value, $Res Function(_$TripReviewerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripReviewer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? review = null,
    Object? rating = null,
    Object? date = null,
  }) {
    return _then(_$TripReviewerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripReviewerImpl implements _TripReviewer {
  const _$TripReviewerImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.review,
      required this.rating,
      required this.date});

  factory _$TripReviewerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripReviewerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String review;
  @override
  final double rating;
  @override
  final String date;

  @override
  String toString() {
    return 'TripReviewer(id: $id, name: $name, imageUrl: $imageUrl, review: $review, rating: $rating, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripReviewerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageUrl, review, rating, date);

  /// Create a copy of TripReviewer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripReviewerImplCopyWith<_$TripReviewerImpl> get copyWith =>
      __$$TripReviewerImplCopyWithImpl<_$TripReviewerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripReviewerImplToJson(
      this,
    );
  }
}

abstract class _TripReviewer implements TripReviewer {
  const factory _TripReviewer(
      {required final String id,
      required final String name,
      required final String imageUrl,
      required final String review,
      required final double rating,
      required final String date}) = _$TripReviewerImpl;

  factory _TripReviewer.fromJson(Map<String, dynamic> json) =
      _$TripReviewerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get review;
  @override
  double get rating;
  @override
  String get date;

  /// Create a copy of TripReviewer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripReviewerImplCopyWith<_$TripReviewerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
