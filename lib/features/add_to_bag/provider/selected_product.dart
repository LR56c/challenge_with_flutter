import 'package:challenge_with_flutter/features/add_to_bag/model/product_bag.dart';
import 'package:challenge_with_flutter/gen/assets.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';
part 'selected_product.g.dart';

@riverpod
Future<ProductBag> selectedProduct(Ref ref, String id) async {
  final list = [
    ProductBag(id: const Uuid().v4(),
        images: [
          Assets.polo.path,
          Assets.polo.path
        ],
        title: 'Custom Fit Polo Bear Oxford Shirt',
        description: 'Blue polo with a classic cut. Made of smooth and soft cotton.',
        brand: 'POLO RALPH',
        price: 132,
        discount: 0.25,
        sizes: ['S', 'M', 'L', 'XL', 'XXL'])
  ];

  // return list.firstWhere((element) => element.id == id);
  return list.first;
}
