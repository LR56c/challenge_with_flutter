// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_reviewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripReviewerImpl _$$TripReviewerImplFromJson(Map<String, dynamic> json) =>
    _$TripReviewerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      review: json['review'] as String,
      rating: (json['rating'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$TripReviewerImplToJson(_$TripReviewerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'review': instance.review,
      'rating': instance.rating,
      'date': instance.date,
    };
