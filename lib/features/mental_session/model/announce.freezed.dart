// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Announce _$AnnounceFromJson(Map<String, dynamic> json) {
  return _Announce.fromJson(json);
}

/// @nodoc
mixin _$Announce {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  /// Serializes this Announce to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Announce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnounceCopyWith<Announce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnounceCopyWith<$Res> {
  factory $AnnounceCopyWith(Announce value, $Res Function(Announce) then) =
      _$AnnounceCopyWithImpl<$Res, Announce>;
  @useResult
  $Res call(
      {String id, String title, String description, String icon, String color});
}

/// @nodoc
class _$AnnounceCopyWithImpl<$Res, $Val extends Announce>
    implements $AnnounceCopyWith<$Res> {
  _$AnnounceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Announce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? color = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnounceImplCopyWith<$Res>
    implements $AnnounceCopyWith<$Res> {
  factory _$$AnnounceImplCopyWith(
          _$AnnounceImpl value, $Res Function(_$AnnounceImpl) then) =
      __$$AnnounceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String description, String icon, String color});
}

/// @nodoc
class __$$AnnounceImplCopyWithImpl<$Res>
    extends _$AnnounceCopyWithImpl<$Res, _$AnnounceImpl>
    implements _$$AnnounceImplCopyWith<$Res> {
  __$$AnnounceImplCopyWithImpl(
      _$AnnounceImpl _value, $Res Function(_$AnnounceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Announce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? icon = null,
    Object? color = null,
  }) {
    return _then(_$AnnounceImpl(
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnounceImpl implements _Announce {
  const _$AnnounceImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.icon,
      required this.color});

  factory _$AnnounceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnounceImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String icon;
  @override
  final String color;

  @override
  String toString() {
    return 'Announce(id: $id, title: $title, description: $description, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnounceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, icon, color);

  /// Create a copy of Announce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnounceImplCopyWith<_$AnnounceImpl> get copyWith =>
      __$$AnnounceImplCopyWithImpl<_$AnnounceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnounceImplToJson(
      this,
    );
  }
}

abstract class _Announce implements Announce {
  const factory _Announce(
      {required final String id,
      required final String title,
      required final String description,
      required final String icon,
      required final String color}) = _$AnnounceImpl;

  factory _Announce.fromJson(Map<String, dynamic> json) =
      _$AnnounceImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get icon;
  @override
  String get color;

  /// Create a copy of Announce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnounceImplCopyWith<_$AnnounceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
