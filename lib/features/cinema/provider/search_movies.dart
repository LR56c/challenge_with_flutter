import 'package:challenge_with_flutter/features/cinema/model/movie.dart';
import 'package:challenge_with_flutter/features/cinema/model/movie_state.dart';
import 'package:challenge_with_flutter/features/cinema/model/show.dart';
import 'package:challenge_with_flutter/features/cinema/model/show_cinema.dart';
import 'package:challenge_with_flutter/features/cinema/model/show_seat.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

part 'search_movies.g.dart';

@riverpod
MovieState searchMovies(Ref ref, String movieName) {
  final movie = Movie(
      id: const Uuid().v4(),
      title: "The boy and the heron",
      sinopsis:
          "Mahito, un joven de 12 años, lucha por asentarse en una nueva ciudad tras la muerte de su madre. Sin embargo, cuando una garza parlante informa a Mahito de que su madre sigue viva, entra en una torre abandonada en su busca, lo que le lleva a otro mundo.",
      pegiImageUrl:
          "https://pegi.info/themes/pegi/public-images/pegi/pegi12.png",
      movieImageUrl:
          "https://m.media-amazon.com/images/M/MV5BMzA5Zjg3MTAtM2FhZS00NTNjLTg3NjEtNWQ4MTRhZjhiNzVmXkEyXkFqcGc@._V1_.jpg",
      category: "Anime",
      director: "Hayao Miyazaki",
      language: "Japanese",
      duration: 125);
  final list = [
    ShowCinema(
        id: const Uuid().v4(),
        movieTitle: "The boy and the heron",
        date: DateTime.now(),
        location: "Cinema 1",
        seatTypes: [
          "VIP",
          "Normal"
        ],
        shows: [
          Show(time: DateTime(2025, 1, 16, 20, 30), seats: [
            ...List.generate(
              10,
              (index) => List.generate(
                10,
                (subIndex) => ShowSeat(
                  id : Uuid().v4(),
                  number: subIndex + 1,
                  row: String.fromCharCode(65 + index),
                  seatStatus: 0,
                  isAvailable: true,
                ),
              ),
            ).expand((element) => element)
          ])
        ])
  ];
  return MovieData(movie, list);
}
