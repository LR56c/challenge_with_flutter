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
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xff277a63)),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    announce.title,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    announce.description,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          announce.icon.iconify(
            size: 96,
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}
