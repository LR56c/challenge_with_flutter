import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String title,
    required String sinopsis,
    required String pegiImageUrl,
    required String movieImageUrl,
    required String category,
    required String director,
    required String language,
    required int duration,
  }) = _Movie;
  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
