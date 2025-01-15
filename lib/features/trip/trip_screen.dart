import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/trip/provider/selected_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TripScreen extends HookConsumerWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tb = useTabController(initialLength: 3);
    final textExpanded = useState(false);
    final trip = ref.watch(selectedTripProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: trip.when(
            data: (data) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        data.mainImageUrl,
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            iconSize: 40,
                            onPressed: () {
                              context.router.maybePop();
                            },
                            icon: const Icon(
                              Icons.arrow_circle_left_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8.0, right: 8.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: IconButton(
                              onPressed: () {
                                ref.read(selectedTripProvider.notifier).toggleBookmark();
                              },
                              iconSize: 20,
                              icon: Icon(
                                data.saved ? Icons.bookmark : Icons.bookmark_border,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48.0),
                          topRight: Radius.circular(48.0),
                        ),
                      ),
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                data.location,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          TabBar(
                            controller: tb,
                            indicatorColor: Colors.orange,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: const [
                              Tab(text: 'About'),
                              Tab(text: 'Review'),
                              Tab(text: 'Photo'),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          SizedBox(
                            height: 250,
                            child: TabBarView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: tb,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Description',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      if (textExpanded.value)
                                        SizedBox(
                                          height: 175,
                                          child: ListView(
                                            children: [
                                              Text(
                                                data.description,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      else
                                        Text(
                                          data.description,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      const SizedBox(height: 8.0),
                                      if (!textExpanded.value)
                                        TextButton(
                                          onPressed: () {
                                            textExpanded.value = true;
                                          },
                                          child: const Text(
                                            'Read more',
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 250,
                                    child: ListView.separated(
                                      itemCount: data.reviews.length,
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(height: 8.0),
                                      itemBuilder: (context, index) {
                                        final review = data.reviews[index];
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            999),
                                                  ),
                                                ),
                                                const SizedBox(width: 8.0),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      review.name,
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      review.date,
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 8.0),
                                            Text(
                                              review.review,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 250,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: data.images.length,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: 8.0),
                                    itemBuilder: (context, index) {
                                      final photo = data.images[index];
                                      return Container(
                                        height: 250,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Image.network(
                                          photo,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize: WidgetStateProperty.all(
                                const Size(double.infinity, 48),
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.orange),
                            ),
                            child: const Text(
                              'Save a Trip',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            error: (error, stackTrace) {
              return Text('Error: $error');
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
