import 'package:challenge_with_flutter/features/add_to_bag/model/product_bag.dart';
import 'package:challenge_with_flutter/features/recipe/model/recipe.dart';
import 'package:challenge_with_flutter/gen/assets.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

part 'recipes.g.dart';

@riverpod
Future<Recipe> selectedRecipe(Ref ref, String id) async {
  final list = [
    Recipe(
        id: const Uuid().v4(),
        reviewsCount: 189,
        imageUrl: Assets.coffeCoconut.path,
        reviewsStars: 4,
        name: 'Sweet iced Coffe with Coconut Milk',
        description:
            'Sweet Iced Coffee with coconut milk is easy to make and stores well in the fridge. Make a large batch and save yourselfa few trips to the coffee shop',
        totalTime: "10 minutes",
        levelTime: "10 minutes",
        badget: "Under \$2",
        ingredients: [
          '3 tablespoon Espresso coffee powder',
          '1 cup off the boil water',
          '1 cup Coconut milk',
          '3 tablespoon Espresso coffee powder',
        ],
        instructions: [
          'Boil some water and let sit for 1-2 minutes.',
          'Put the cofFee grounds into a cafetiêre and pour in the water.',
          'Let the coffee steep for 5 minutes then slowly press down the plunger on your Cafetiére.',
          'Pour the coffee into a jug, allow to cool then chill for several hours.',
          'Whisk in the coconut milk and condensed milk and serve over plenty of ice.',
          'This coffee can be stored in the fridge for up to 5 days. Shake or Stir again before serving.'
        ])
  ];

  // return list.firstWhere((element) => element.id == id);
  return list.first;
}
