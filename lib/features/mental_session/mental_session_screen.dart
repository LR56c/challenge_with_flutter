import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/mental_session/provider/announces.dart';
import 'package:challenge_with_flutter/features/mental_session/provider/featured_sessions.dart';
import 'package:challenge_with_flutter/features/mental_session/provider/routines.dart';
import 'package:challenge_with_flutter/features/mental_session/widgets/announce_card.dart';
import 'package:challenge_with_flutter/features/mental_session/widgets/routine_card.dart';
import 'package:challenge_with_flutter/features/mental_session/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MentalSessionScreen extends ConsumerWidget {
  const MentalSessionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announces = ref.watch(announcesProvider);
    final features = ref.watch(featuredSessionsProvider);
    final routines = ref.watch(routinesProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
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
                features.when(data: (data) {
                  return SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SessionCard(
                          session: data[index],
                        );
                      },
                    ),
                  );
                }, error: (error, stack) {
                  return Text('Error: $error');
                }, loading: () {
                  return const Center(child: CircularProgressIndicator());
                }),
                routines.when(data: (data) {
                  return Wrap(
                    children: data.map((e) {
                      return RoutineCard(routine: e);
                    }).toList(),
                  );
                }, error: (error, stack) {
                  return Text('Error: $error');
                }, loading: () {
                  return const Center(child: CircularProgressIndicator());
                })
              ],
            ),
          )),
    );
  }
}
