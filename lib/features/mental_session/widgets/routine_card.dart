import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_with_flutter/features/mental_session/model/routine.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@immutable
class RoutineCard extends StatelessWidget {
  RoutineCard({super.key, required this.routine});

  Routine routine;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200,
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999)
            ),
            child: CachedNetworkImage(
              imageUrl: routine.imageUrl,
              httpHeaders: const {"Cache-Control": "no-cache"},
              width: 100,
              height: 100,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Gap(16.0),
          Text(routine.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
