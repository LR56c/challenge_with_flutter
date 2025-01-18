// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowSeat _$ShowSeatFromJson(Map<String, dynamic> json) {
  return _ShowSeat.fromJson(json);
}

/// @nodoc
mixin _$ShowSeat {
  String get id => throw _privateConstructorUsedError;
  String get row => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get seatStatus => throw _privateConstructorUsedError;

  /// Serializes this ShowSeat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShowSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowSeatCopyWith<ShowSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowSeatCopyWith<$Res> {
  factory $ShowSeatCopyWith(ShowSeat value, $Res Function(ShowSeat) then) =
      _$ShowSeatCopyWithImpl<$Res, ShowSeat>;
  @useResult
  $Res call({String id, String row, int number, int seatStatus});
}

/// @nodoc
class _$ShowSeatCopyWithImpl<$Res, $Val extends ShowSeat>
    implements $ShowSeatCopyWith<$Res> {
  _$ShowSeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? row = null,
    Object? number = null,
    Object? seatStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      seatStatus: null == seatStatus
          ? _value.seatStatus
          : seatStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowSeatImplCopyWith<$Res>
    implements $ShowSeatCopyWith<$Res> {
  factory _$$ShowSeatImplCopyWith(
          _$ShowSeatImpl value, $Res Function(_$ShowSeatImpl) then) =
      __$$ShowSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String row, int number, int seatStatus});
}

/// @nodoc
class __$$ShowSeatImplCopyWithImpl<$Res>
    extends _$ShowSeatCopyWithImpl<$Res, _$ShowSeatImpl>
    implements _$$ShowSeatImplCopyWith<$Res> {
  __$$ShowSeatImplCopyWithImpl(
      _$ShowSeatImpl _value, $Res Function(_$ShowSeatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? row = null,
    Object? number = null,
    Object? seatStatus = null,
  }) {
    return _then(_$ShowSeatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      seatStatus: null == seatStatus
          ? _value.seatStatus
          : seatStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowSeatImpl implements _ShowSeat {
  const _$ShowSeatImpl(
      {required this.id,
      required this.row,
      required this.number,
      required this.seatStatus});

  factory _$ShowSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowSeatImplFromJson(json);

  @override
  final String id;
  @override
  final String row;
  @override
  final int number;
  @override
  final int seatStatus;

  @override
  String toString() {
    return 'ShowSeat(id: $id, row: $row, number: $number, seatStatus: $seatStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.seatStatus, seatStatus) ||
                other.seatStatus == seatStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, row, number, seatStatus);

  /// Create a copy of ShowSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSeatImplCopyWith<_$ShowSeatImpl> get copyWith =>
      __$$ShowSeatImplCopyWithImpl<_$ShowSeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowSeatImplToJson(
      this,
    );
  }
}

abstract class _ShowSeat implements ShowSeat {
  const factory _ShowSeat(
      {required final String id,
      required final String row,
      required final int number,
      required final int seatStatus}) = _$ShowSeatImpl;

  factory _ShowSeat.fromJson(Map<String, dynamic> json) =
      _$ShowSeatImpl.fromJson;

  @override
  String get id;
  @override
  String get row;
  @override
  int get number;
  @override
  int get seatStatus;

  /// Create a copy of ShowSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowSeatImplCopyWith<_$ShowSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
