import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/features/recipe/provider/recipes.dart';
import 'package:challenge_with_flutter/features/recipe/widgets/level_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_bullet_list/bullet_list.dart';
import 'package:super_bullet_list/bullet_style.dart';

@RoutePage()
class RecipeScreen extends HookConsumerWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(selectedRecipeProvider('1'));

    return SafeArea(
      child: Scaffold(
          body: recipe.when(
            data: (data) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage(data.imageUrl),
                          width: double.infinity,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: 190,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              data.name.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              for (var i = 0; i < 5; i++)
                                Icon(
                                  i < data.reviewsStars
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: Colors.orange,
                                ),
                              const Gap(8.0),
                              Text('(${data.reviewsCount})'),
                            ],
                          ),
                          const Gap(8.0),
                          Text(data.name,
                              style: const TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              )),
                          const Gap(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LevelBadge(
                                  label: 'total time',
                                  description: data.totalTime,
                                  icon: Icons.timer),
                              LevelBadge(
                                  label: 'level',
                                  description: data.levelTime,
                                  icon: Icons.assistant_rounded),
                              LevelBadge(
                                  label: 'budget',
                                  description: data.badget,
                                  icon: Icons.attach_money),
                            ],
                          ),
                          const Gap(8.0),
                          Text(data.description,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontStyle: FontStyle.italic,
                                color: Colors.black54,
                              )),
                          const Gap(8.0),
                          const Divider(),
                          const Gap(8.0),
                          const Text('Ingredients',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          const Gap(8.0),
                          for (var ingredient in data.ingredients)
                            HookBuilder(builder: (context) {
                              final isChecked = useState(false);
                              return Row(
                                children: [
                                  Checkbox(value: isChecked.value, onChanged: (value) {
                                    isChecked.value = value!;
                                  }),
                                  const Gap(8.0),
                                  Text(ingredient,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                      )),
                                ],
                              );
                            },),
                          const Gap(8.0),
                          const Divider(),
                          const Gap(8.0),
                          const Text('Instructions',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          const Gap(8.0),
                          SuperBulletList(
                            isOrdered: true,
                            separator: const Gap(8.0),
                            items: data.instructions.map((e) => Text(e))
                                .toList(),
                          ),
                          const Gap(8.0),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            error: (error, stackTrace) {
              return Text('Error: $error');
            },
            loading: () {
              return const CircularProgressIndicator();
            },
          )),
    );
  }
}
