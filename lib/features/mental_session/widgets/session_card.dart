import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_with_flutter/features/mental_session/model/session.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@immutable
class SessionCard extends StatelessWidget {
  SessionCard({super.key, required this.session});

  Session session;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
