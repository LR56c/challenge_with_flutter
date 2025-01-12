import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@immutable
class LevelBadge extends StatelessWidget {
  LevelBadge({
    super.key,
    required this.label,
    required this.description,
    required this.icon,
  });

  String label;
  String description;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.black45),
        const Gap(8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label.toUpperCase(),
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                )),
            Text(description,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                )),
          ],
        )
      ],
    );
  }
}
