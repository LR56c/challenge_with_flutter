import 'package:challenge_with_flutter/features/christmas_cookies/model/difficulty_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'christmas_cookie.freezed.dart';
part 'christmas_cookie.g.dart';

@freezed
class ChristmasCookie with _$ChristmasCookie {
  const factory ChristmasCookie({
    required String id,
    required String title,
    required String imageUrl,
    required int duration,
    required DifficultyEnum difficulty,
    required double averageReview,
  }) = _ChristmasCookie;
  factory ChristmasCookie.fromJson(Map<String, Object?> json) => _$ChristmasCookieFromJson(json);
}
