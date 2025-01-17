import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/features/cinema/provider/search_movies.dart';
import 'package:challenge_with_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CinemaScreen extends ConsumerWidget {
  const CinemaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(searchMoviesProvider(''));
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffdcdbd7),
            leading: Image.asset(
              Assets.cineLogo.path,
              height: 100,
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list_rounded)),
            ],
          ),
          body: movies.when(
            data: (movie, shows) {
              return Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        Image.network(
                          movie.movieImageUrl,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ],
                            ),
                          ),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Positioned(
                            left: 0,
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.play_circle_outline_rounded,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    movie.title.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.network(
                                        movie.pegiImageUrl,
                                        height: 30,
                                      ),
                                      const Gap(8.0),
                                      Text(
                                        movie.category,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Gap(8.0),
                                      const Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Gap(8.0),
                                      Text(
                                        '${movie.duration} min',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Gap(8.0),
                                      const Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Gap(8.0),
                                      Text(
                                        movie.language,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(onPressed: () {

                                  },
                                    child: Row(
                                      children: [
                                        const Text(
                                          'More Info',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.add_rounded,
                                          color: Colors.red,)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              );
            },
            error: () {
              return const Center(
                child: Text('Error'),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
    );
  }
}
