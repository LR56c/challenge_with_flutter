import 'package:challenge_with_flutter/features/mental_session/model/session.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:time/time.dart';

@immutable
class SessionCard extends StatelessWidget {
  SessionCard({super.key, required this.session});

  Session session;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.network(
                session.imageUrl,
                width: 150,
                height: 200,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            if(session.isNew)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 32,
                  width: 64,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                    ),
                    color: Colors.yellow.shade800.withOpacity(0.5),
                  ),
                  child: const Center(
                    child: Text(
                      'New',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Text(
                  session.duration.seconds.pretty(
                    abbreviated: true,
                    tersity: DurationTersity.minute,
                  ),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Gap(8),
        Text(session.title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
