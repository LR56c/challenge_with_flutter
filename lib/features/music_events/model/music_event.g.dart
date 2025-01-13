// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MusicEventImpl _$$MusicEventImplFromJson(Map<String, dynamic> json) =>
    _$MusicEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      isAvailable: json['isAvailable'] as bool,
    );

Map<String, dynamic> _$$MusicEventImplToJson(_$MusicEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'isAvailable': instance.isAvailable,
    };
