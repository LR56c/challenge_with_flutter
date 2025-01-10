// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductBag _$ProductBagFromJson(Map<String, dynamic> json) {
  return _ProductBag.fromJson(json);
}

/// @nodoc
mixin _$ProductBag {
  String get id => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  List<String> get sizes => throw _privateConstructorUsedError;

  /// Serializes this ProductBag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductBag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductBagCopyWith<ProductBag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBagCopyWith<$Res> {
  factory $ProductBagCopyWith(
          ProductBag value, $Res Function(ProductBag) then) =
      _$ProductBagCopyWithImpl<$Res, ProductBag>;
  @useResult
  $Res call(
      {String id,
      List<String> images,
      String title,
      String description,
      String brand,
      int price,
      double discount,
      List<String> sizes});
}

/// @nodoc
class _$ProductBagCopyWithImpl<$Res, $Val extends ProductBag>
    implements $ProductBagCopyWith<$Res> {
  _$ProductBagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductBag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? brand = null,
    Object? price = null,
    Object? discount = null,
    Object? sizes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBagImplCopyWith<$Res>
    implements $ProductBagCopyWith<$Res> {
  factory _$$ProductBagImplCopyWith(
          _$ProductBagImpl value, $Res Function(_$ProductBagImpl) then) =
      __$$ProductBagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> images,
      String title,
      String description,
      String brand,
      int price,
      double discount,
      List<String> sizes});
}

/// @nodoc
class __$$ProductBagImplCopyWithImpl<$Res>
    extends _$ProductBagCopyWithImpl<$Res, _$ProductBagImpl>
    implements _$$ProductBagImplCopyWith<$Res> {
  __$$ProductBagImplCopyWithImpl(
      _$ProductBagImpl _value, $Res Function(_$ProductBagImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductBag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = null,
    Object? title = null,
    Object? description = null,
    Object? brand = null,
    Object? price = null,
    Object? discount = null,
    Object? sizes = null,
  }) {
    return _then(_$ProductBagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      sizes: null == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBagImpl implements _ProductBag {
  const _$ProductBagImpl(
      {required this.id,
      required final List<String> images,
      required this.title,
      required this.description,
      required this.brand,
      required this.price,
      required this.discount,
      required final List<String> sizes})
      : _images = images,
        _sizes = sizes;

  factory _$ProductBagImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBagImplFromJson(json);

  @override
  final String id;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String title;
  @override
  final String description;
  @override
  final String brand;
  @override
  final int price;
  @override
  final double discount;
  final List<String> _sizes;
  @override
  List<String> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  String toString() {
    return 'ProductBag(id: $id, images: $images, title: $title, description: $description, brand: $brand, price: $price, discount: $discount, sizes: $sizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBagImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_images),
      title,
      description,
      brand,
      price,
      discount,
      const DeepCollectionEquality().hash(_sizes));

  /// Create a copy of ProductBag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBagImplCopyWith<_$ProductBagImpl> get copyWith =>
      __$$ProductBagImplCopyWithImpl<_$ProductBagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBagImplToJson(
      this,
    );
  }
}

abstract class _ProductBag implements ProductBag {
  const factory _ProductBag(
      {required final String id,
      required final List<String> images,
      required final String title,
      required final String description,
      required final String brand,
      required final int price,
      required final double discount,
      required final List<String> sizes}) = _$ProductBagImpl;

  factory _ProductBag.fromJson(Map<String, dynamic> json) =
      _$ProductBagImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get images;
  @override
  String get title;
  @override
  String get description;
  @override
  String get brand;
  @override
  int get price;
  @override
  double get discount;
  @override
  List<String> get sizes;

  /// Create a copy of ProductBag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductBagImplCopyWith<_$ProductBagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
