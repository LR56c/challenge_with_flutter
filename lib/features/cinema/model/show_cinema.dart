import 'package:challenge_with_flutter/features/cinema/model/show.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_cinema.freezed.dart';
part 'show_cinema.g.dart';

@freezed
class ShowCinema with _$ShowCinema {
  const factory ShowCinema({
    required String id,
    required String movieTitle,
    required DateTime date,
    required String location,
    required List<String> seatTypes,
    required List<Show> shows,
  }) = _ShowCinema;
  factory ShowCinema.fromJson(Map<String, Object?> json) => _$ShowCinemaFromJson(json);
}
