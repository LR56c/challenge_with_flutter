import 'package:challenge_with_flutter/features/mental_session/model/routine.dart';
import 'package:flutter/material.dart';

@immutable
class RoutineCard extends StatelessWidget {
  RoutineCard({super.key, required this.routine});

  Routine routine;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(routine.title),
        ],
      ),
    );
  }
}
