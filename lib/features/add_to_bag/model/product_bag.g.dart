// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_bag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductBagImpl _$$ProductBagImplFromJson(Map<String, dynamic> json) =>
    _$ProductBagImpl(
      id: json['id'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      description: json['description'] as String,
      brand: json['brand'] as String,
      price: (json['price'] as num).toInt(),
      discount: (json['discount'] as num).toDouble(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductBagImplToJson(_$ProductBagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'description': instance.description,
      'brand': instance.brand,
      'price': instance.price,
      'discount': instance.discount,
      'sizes': instance.sizes,
    };
