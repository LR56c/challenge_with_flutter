import 'package:challenge_with_flutter/extensions/icon.dart';
import 'package:challenge_with_flutter/features/mental_session/model/announce.dart';
import 'package:flutter/material.dart';

@immutable
class AnnounceCard extends StatelessWidget {
  AnnounceCard({super.key, required this.announce});

  Announce announce;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xff277a63)
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Text(announce.title),
              Text(announce.description),
            ],
          ),
          announce.icon.iconify(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
