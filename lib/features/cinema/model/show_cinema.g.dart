// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_cinema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowCinemaImpl _$$ShowCinemaImplFromJson(Map<String, dynamic> json) =>
    _$ShowCinemaImpl(
      id: json['id'] as String,
      movieTitle: json['movieTitle'] as String,
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String,
      seatTypes:
          (json['seatTypes'] as List<dynamic>).map((e) => e as String).toList(),
      shows: (json['shows'] as List<dynamic>)
          .map((e) => Show.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShowCinemaImplToJson(_$ShowCinemaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movieTitle': instance.movieTitle,
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'seatTypes': instance.seatTypes,
      'shows': instance.shows,
    };
