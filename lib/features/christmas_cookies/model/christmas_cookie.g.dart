// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'christmas_cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChristmasCookieImpl _$$ChristmasCookieImplFromJson(
        Map<String, dynamic> json) =>
    _$ChristmasCookieImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      duration: (json['duration'] as num).toInt(),
      difficulty: $enumDecode(_$DifficultyEnumEnumMap, json['difficulty']),
      averageReview: (json['averageReview'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChristmasCookieImplToJson(
        _$ChristmasCookieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'duration': instance.duration,
      'difficulty': _$DifficultyEnumEnumMap[instance.difficulty]!,
      'averageReview': instance.averageReview,
    };

const _$DifficultyEnumEnumMap = {
  DifficultyEnum.easy: 'easy',
  DifficultyEnum.medium: 'medium',
  DifficultyEnum.hard: 'hard',
};
