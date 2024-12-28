// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CookieImpl _$$CookieImplFromJson(Map<String, dynamic> json) => _$CookieImpl(
      name: json['name'] as String,
      stars: (json['stars'] as num).toDouble(),
      difficulty: $enumDecode(_$CookieEnumEnumMap, json['difficulty']),
    );

Map<String, dynamic> _$$CookieImplToJson(_$CookieImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stars': instance.stars,
      'difficulty': _$CookieEnumEnumMap[instance.difficulty]!,
    };

const _$CookieEnumEnumMap = {
  CookieEnum.easy: 'easy',
  CookieEnum.medium: 'medium',
  CookieEnum.hard: 'hard',
};
