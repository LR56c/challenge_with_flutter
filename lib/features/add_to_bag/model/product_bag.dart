import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_bag.freezed.dart';
part 'product_bag.g.dart';

@freezed
class ProductBag with _$ProductBag {
  const factory ProductBag({
    required String id,
    required List<String> images,
    required String title,
    required String description,
    required String brand,
    required int price,
    required double discount,
    required List<String> sizes,
  }) = _ProductBag;
  factory ProductBag.fromJson(Map<String, Object?> json) => _$ProductBagFromJson(json);
}
