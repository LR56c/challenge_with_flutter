// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: json['id'] as String,
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      reviewsStars: (json['reviewsStars'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      totalTime: json['totalTime'] as String,
      levelTime: json['levelTime'] as String,
      badget: json['badget'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewsCount': instance.reviewsCount,
      'reviewsStars': instance.reviewsStars,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'totalTime': instance.totalTime,
      'levelTime': instance.levelTime,
      'badget': instance.badget,
      'ingredients': instance.ingredients,
      'instructions': instance.instructions,
    };
