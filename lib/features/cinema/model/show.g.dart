// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowImpl _$$ShowImplFromJson(Map<String, dynamic> json) => _$ShowImpl(
      time: DateTime.parse(json['time'] as String),
      availableSeats: (json['availableSeats'] as num).toInt(),
    );

Map<String, dynamic> _$$ShowImplToJson(_$ShowImpl instance) =>
    <String, dynamic>{
      'time': instance.time.toIso8601String(),
      'availableSeats': instance.availableSeats,
    };
