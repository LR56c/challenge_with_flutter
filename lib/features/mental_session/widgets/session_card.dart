import 'package:challenge_with_flutter/features/mental_session/model/session.dart';
import 'package:flutter/material.dart';

@immutable
class SessionCard extends StatelessWidget {
  SessionCard({super.key, required this.session});

  Session session;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(session.title),
          Text(session.description),
        ],
      ),
    );
  }
}
