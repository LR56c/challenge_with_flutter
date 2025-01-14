// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      mainImageUrl: json['mainImageUrl'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toDouble(),
      saved: json['saved'] as bool,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => TripReviewer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'location': instance.location,
      'mainImageUrl': instance.mainImageUrl,
      'images': instance.images,
      'rating': instance.rating,
      'saved': instance.saved,
      'reviews': instance.reviews,
    };
