// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      sinopsis: json['sinopsis'] as String,
      pegiImageUrl: json['pegiImageUrl'] as String,
      movieImageUrl: json['movieImageUrl'] as String,
      category: json['category'] as String,
      director: json['director'] as String,
      language: json['language'] as String,
      duration: (json['duration'] as num).toInt(),
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sinopsis': instance.sinopsis,
      'pegiImageUrl': instance.pegiImageUrl,
      'movieImageUrl': instance.movieImageUrl,
      'category': instance.category,
      'director': instance.director,
      'language': instance.language,
      'duration': instance.duration,
    };
