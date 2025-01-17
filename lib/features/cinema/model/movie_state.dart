import 'package:challenge_with_flutter/features/cinema/model/movie.dart';
import 'package:challenge_with_flutter/features/cinema/model/show.dart';
import 'package:challenge_with_flutter/features/cinema/model/show_cinema.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.loading() = MovieLoading;
  const factory MovieState.error() = MovieError;
  const factory MovieState.data(Movie movie,List<ShowCinema> shows) = MovieData;
}
