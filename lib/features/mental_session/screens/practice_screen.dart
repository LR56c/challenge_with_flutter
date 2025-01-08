import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/announces.dart';
import '../provider/featured_sessions.dart';
import '../provider/routines.dart';
import '../widgets/announce_card.dart';
import '../widgets/routine_card.dart';
import '../widgets/session_card.dart';

@RoutePage()
class PracticeScreen extends ConsumerWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announces = ref.watch(announcesProvider);
    final features = ref.watch(featuredSessionsProvider);
    final routines = ref.watch(routinesProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          announces.when(data: (data) {
            return AnnounceCard(
              announce: data.first,
            );
          }, error: (error, stack) {
            return Text('Error: $error');
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Features sessions',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(16),
          features.when(data: (data) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                height: 260,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  padding: const EdgeInsets.only(right: 16),
                  itemBuilder: (BuildContext context, int index) {
                    return SessionCard(
                      session: data[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Gap(24.0);
                  },
                ),
              ),
            );
          }, error: (error, stack) {
            return Text('Error: $error');
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Discover',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          routines.when(data: (data) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 16.0,
                children: data.map((e) {
                  return RoutineCard(routine: e);
                }).toList(),
              ),
            );
          }, error: (error, stack) {
            return Text('Error: $error');
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          })
        ],
      ),
    );
  }
}
