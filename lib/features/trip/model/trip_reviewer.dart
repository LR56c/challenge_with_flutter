import 'package:freezed_annotation/freezed_annotation.dart';
part 'trip_reviewer.freezed.dart';
part 'trip_reviewer.g.dart';

@freezed
class TripReviewer with _$TripReviewer {
  const factory TripReviewer({
    required String id,
    required String name,
    required String imageUrl,
    required String review,
    required double rating,
    required String date,
  }) = _TripReviewer;

  factory TripReviewer.fromJson(Map<String, Object?> json) => _$TripReviewerFromJson(json);
}
