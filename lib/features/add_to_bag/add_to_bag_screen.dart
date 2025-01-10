import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/add_to_bag/model/product_bag.dart';
import 'package:challenge_with_flutter/features/add_to_bag/provider/selected_product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AddToBagScreen extends ConsumerWidget {
  const AddToBagScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedProductProvider('abc'));
    return SafeArea(
      child: Scaffold(
          body: selected.when(
        data: (data) {
          final firstImage = data.images.first;
          final restImages = data.images.skip(1);
          return Column(
            children: [
              Image(image: AssetImage(firstImage),),
              Wrap(children: [
                ...restImages.map((e)=>Image.network(e))
              ],),
              Text(data.brand),
              Text(data.title),
              Text(data.description),
              Row(
                children: [
                  Text('\$${data.price * (1 - data.discount)}'),
                  Text('-${(data.discount * 100)}%'),
                ],
              ),
              Text('\$${data.price}'),
              Text('Choose Size'),
              Row(
                children: [...data.sizes.map((d) => Text(d))],
              ),
              TextButton(onPressed: () {}, child: Text('Add to bag'))
            ],
          );
        },
        error: (error, stackTrace) {
          return Text('Error');
        },
        loading: () {
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
