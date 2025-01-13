// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'music_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MusicEvent _$MusicEventFromJson(Map<String, dynamic> json) {
  return _MusicEvent.fromJson(json);
}

/// @nodoc
mixin _$MusicEvent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this MusicEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MusicEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MusicEventCopyWith<MusicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicEventCopyWith<$Res> {
  factory $MusicEventCopyWith(
          MusicEvent value, $Res Function(MusicEvent) then) =
      _$MusicEventCopyWithImpl<$Res, MusicEvent>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      bool isAvailable});
}

/// @nodoc
class _$MusicEventCopyWithImpl<$Res, $Val extends MusicEvent>
    implements $MusicEventCopyWith<$Res> {
  _$MusicEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MusicEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? isAvailable = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MusicEventImplCopyWith<$Res>
    implements $MusicEventCopyWith<$Res> {
  factory _$$MusicEventImplCopyWith(
          _$MusicEventImpl value, $Res Function(_$MusicEventImpl) then) =
      __$$MusicEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      bool isAvailable});
}

/// @nodoc
class __$$MusicEventImplCopyWithImpl<$Res>
    extends _$MusicEventCopyWithImpl<$Res, _$MusicEventImpl>
    implements _$$MusicEventImplCopyWith<$Res> {
  __$$MusicEventImplCopyWithImpl(
      _$MusicEventImpl _value, $Res Function(_$MusicEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MusicEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? isAvailable = null,
  }) {
    return _then(_$MusicEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MusicEventImpl implements _MusicEvent {
  const _$MusicEventImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required this.isAvailable});

  factory _$MusicEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$MusicEventImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime date;
  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'MusicEvent(id: $id, title: $title, description: $description, date: $date, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, date, isAvailable);

  /// Create a copy of MusicEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MusicEventImplCopyWith<_$MusicEventImpl> get copyWith =>
      __$$MusicEventImplCopyWithImpl<_$MusicEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MusicEventImplToJson(
      this,
    );
  }
}

abstract class _MusicEvent implements MusicEvent {
  const factory _MusicEvent(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime date,
      required final bool isAvailable}) = _$MusicEventImpl;

  factory _MusicEvent.fromJson(Map<String, dynamic> json) =
      _$MusicEventImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  bool get isAvailable;

  /// Create a copy of MusicEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MusicEventImplCopyWith<_$MusicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
