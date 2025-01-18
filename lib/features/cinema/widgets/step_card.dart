import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StepCard extends ConsumerWidget {
  const StepCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.9],
          colors: [
            Colors.black,
            Color(0x66951414),
          ],
        ),
      ),
      height: 70,
      child: const Row(
        children: [
          Icon(Icons.event_seat, color: Colors.red,
            size: 40
          ),
          Gap(8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Step 1', style: TextStyle(color: Colors.grey)),
              Text('Select seats', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                  color: Colors.white
              )),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Time Left', style: TextStyle(color: Colors.grey)),
              Text('9m 31s', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              )),
            ],
          ),
          Gap(8.0),
          Icon(Icons.keyboard_arrow_down, color: Colors.white,
              size: 30
          )
        ],
      ),
    );
  }
}
