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
            actions: const [
              Icon(Icons.search),
              Gap(16.0),
              Icon(Icons.filter_list_rounded),
              Gap(16.0),
            ],
          ),
          body: movies.when(data: (movie, shows) {
            return const Center(
              child: Text('Data'),
            );
          }, error: () {
            return const Center(
              child: Text('Error'),
            );
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },)),
    );
  }
}
