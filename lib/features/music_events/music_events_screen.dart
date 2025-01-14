import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/features/music_events/providers/music_events.dart';
import 'package:challenge_with_flutter/features/music_events/widgets/music_event_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MusicEventsScreen extends ConsumerWidget {
  const MusicEventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(musicEventsProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
          body: events.when(
        data: (location, list) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Music Events',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8),
                Text('in $location',
                    style: const TextStyle(
                      fontSize: 24,
                    )),
                ...list.map((e) => Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: MusicEventCard(event: e),
                )),
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
}
