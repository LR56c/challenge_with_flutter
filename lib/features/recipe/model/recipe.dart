import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String id,
    required int reviewsCount,
    required int reviewsStars,
    required String imageUrl,
    required String name,
    required String description,
    required String totalTime,
    required String levelTime,
    required String badget,
    required List<String> ingredients,
    required List<String> instructions,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}
