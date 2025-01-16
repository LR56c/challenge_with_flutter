import 'package:challenge_with_flutter/features/add_to_bag/model/product_bag.dart';
import 'package:challenge_with_flutter/features/cinema/model/movie.dart';
import 'package:challenge_with_flutter/features/cinema/model/movie_state.dart';
import 'package:challenge_with_flutter/gen/assets.gen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

part 'search_movies.g.dart';

@riverpod
MovieState searchMovies(Ref ref, String movieName)  {
  final list = [
    Movie(
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
        duration: 125),
  ];
  // return list;
  return MovieLoading();
}
