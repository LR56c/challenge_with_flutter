import 'package:accordion/accordion.dart';
import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/features/cinema/model/show_cinema.dart';
import 'package:challenge_with_flutter/features/cinema/provider/search_movies.dart';
import 'package:challenge_with_flutter/features/cinema/widgets/cinema_dropdown.dart';
import 'package:challenge_with_flutter/features/cinema/widgets/date_slider_selector.dart';
import 'package:challenge_with_flutter/features/cinema/widgets/show_date_card.dart';
import 'package:challenge_with_flutter/gen/assets.gen.dart';
import 'package:challenge_with_flutter/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CinemaScreen extends HookConsumerWidget {
  const CinemaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(searchMoviesProvider(''));
    final threeDates = [
      DateTime.now(),
      DateTime.now().add(const Duration(days: 1)),
      DateTime.now().add(const Duration(days: 2)),
      DateTime.now().add(const Duration(days: 3)),
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().add(const Duration(days: 5)),
    ];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
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
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
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
                                    const Gap(8.0),
                                    Text(
                                      movie.title.toUpperCase(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Gap(8.0),
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
                                    const Gap(8.0),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Row(
                                        children: [
                                          Text(
                                            'More Info',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add_rounded,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      color: Colors.black54,
                      child: DateSliderSelector(
                        initialDate: threeDates[0],
                        rangeDates: threeDates,
                        onDateSelected: (date) {},
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            top: 16.0,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: CinemaDropdown(
                                  placeholder: 'CINEMA(S)',
                                  labels: [
                                    'Cinema 1',
                                    'Cinema 2',
                                    'Cinema 3',
                                    'Cinema 4',
                                  ],
                                  onLabelSelected: (val) {
                                    print('val $val');
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Accordion(
                          maxOpenSections: 10,
                          headerBackgroundColor: Colors.black,
                          contentBackgroundColor: Colors.black,
                          rightIcon: const Icon(Icons.add_rounded,
                              color: Colors.white),
                          headerBorderWidth: 10,
                          contentBorderWidth: 0,
                          disableScrolling: true,
                          contentHorizontalPadding: 20,
                          openAndCloseAnimation: true,
                          scaleWhenAnimating: false,
                          contentBorderColor: Colors.black,
                          headerPadding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 15),
                          children: [
                            ...shows.map((e) => showAccordionCard(
                                  context: context,
                                  e: e,
                                  isOpen: shows.indexOf(e) == 0,
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
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

  AccordionSection showAccordionCard(
      {required BuildContext context,
      required ShowCinema e,
      bool isOpen = false}) {
    return AccordionSection(
      isOpen: isOpen,
      header: Text(
        e.location,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(24.0),
          Text(
            e.movieTitle.toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
          const Gap(24.0),
          const Row(
            children: [
              Text(
                'DELUXE +',
                style: TextStyle(color: Colors.white),
              ),
              Gap(24.0),
              Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              )
            ],
          ),
          const Gap(24.0),
          const Row(
            children: [
              Icon(Icons.event_seat, color: Colors.white),
              Gap(24.0),
              Icon(Icons.airline_seat_recline_extra_rounded,
                  color: Colors.white),
            ],
          ),
          const Gap(24.0),
          Center(
            child: Wrap(
              spacing: 24.0,
              runSpacing: 24.0,
              children: [
                ...e.shows.map((show) {
                  return ShowDateCard(
                    totalSeats: show.seats.length,
                    availableSeats: show.seats
                        .where((element) => element.seatStatus == 0)
                        .length,
                    date: show.time,
                    onClick: () {
                      context.router.push(const CinemaStep1Route());
                    },
                  );
                }),
              ],
            ),
          ),
          const Gap(24.0),
        ],
      ),
    );
  }
}
