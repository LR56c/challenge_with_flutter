import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/add_to_bag/provider/selected_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AddToBagScreen extends HookConsumerWidget {
  const AddToBagScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedProductProvider('abc'));

    final sizeSelected = useState<String>('');

    return SafeArea(
      child: Scaffold(
          body: selected.when(
        data: (data) {
          final firstImage = data.images.first;
          final restImages = data.images.skip(1);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16.0),
                Container(
                    alignment: Alignment.center,
                    clipBehavior: Clip.antiAlias,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(firstImage),
                    )),
                const Gap(16.0),
                Center(
                  child: Wrap(
                    children: [
                      ...restImages.map((e) => Container(
                            height: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Image(
                              image: AssetImage(e),
                              height: 100,
                            ),
                          ))
                    ],
                  ),
                ),
                const Gap(16.0),
                Text(
                  data.brand,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8.0),
                Text(data.title,
                    style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    )),
                const Gap(8.0),
                Text(data.description,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                const Gap(8.0),
                Row(
                  children: [
                    Text(
                        '\$${(data.price * (1 - data.discount)).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const Gap(16.0),
                    Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('-${(data.discount * 100)}%',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ))),
                  ],
                ),
                const Gap(8.0),
                Text('\$${data.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.grey,
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                const Gap(8.0),
                const Text('Choose Size',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                const Gap(8.0),
                Row(
                  children: [
                    ...data.sizes.map((d) => TextButton(
                          onPressed: () {
                            sizeSelected.value = d;
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(4.0),
                            alignment: Alignment.center,
                            backgroundColor: sizeSelected.value == d
                                ? Colors.black
                                : Colors.white,
                            minimumSize: const Size(32.0, 32.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text(d,
                              style: TextStyle(
                                color: sizeSelected.value == d
                                    ? Colors.white
                                    : Colors.black,
                              )
                          ),
                        ))
                  ],
                ),
                const Gap(8.0),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 48.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Add to bag',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return const Text('Error');
        },
        loading: () {
          return const CircularProgressIndicator();
        },
      )),
    );
  }
}
