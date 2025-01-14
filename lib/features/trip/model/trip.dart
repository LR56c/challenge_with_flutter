import 'package:challenge_with_flutter/features/trip/model/trip_reviewer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    required String id,
    required String title,
    required String description,
    required String location,
    required String mainImageUrl,
    required List<String> images,
    required double rating,
    required bool saved,
    required List<TripReviewer> reviews,
  }) = _Trip;

  factory Trip.fromJson(Map<String, Object?> json) => _$TripFromJson(json);
}
