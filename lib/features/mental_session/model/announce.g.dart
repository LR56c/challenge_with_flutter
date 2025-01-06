// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnounceImpl _$$AnnounceImplFromJson(Map<String, dynamic> json) =>
    _$AnnounceImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$AnnounceImplToJson(_$AnnounceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
    };
