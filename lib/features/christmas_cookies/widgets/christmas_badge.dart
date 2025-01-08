import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@immutable
class ChristmasBadge extends StatelessWidget {
  ChristmasBadge({
    super.key,
    required this.label,
    required this.icon
  });

  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return         Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white.withOpacity(0.8),
      ),
      padding: const EdgeInsets.all(6.0),
      child:
      Row(
        children: [
          Icon(icon,
            color: Colors.red,
            size: 20,
          ),
          const Gap(4.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }
}
