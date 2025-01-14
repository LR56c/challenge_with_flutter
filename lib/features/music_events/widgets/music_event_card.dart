import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../model/music_event.dart';

Color getRandomPastelColorHSL() {
  final Random random = Random();
  final double hue = random.nextDouble() * 360;
  final double saturation =
      0.3 + (random.nextDouble() * 0.4); // Entre 0.3 y 0.7
  final double lightness = 0.7 + (random.nextDouble() * 0.2); // Entre 0.7 y 0.9
  final HSLColor hslColor = HSLColor.fromAHSL(1, hue, saturation, lightness);
  return hslColor.toColor();
}

@immutable
class MusicEventCard extends HookConsumerWidget {
  MusicEventCard({
    super.key,
    required this.event,
  });

  MusicEvent event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                color: getRandomPastelColorHSL(),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (event.date.day == DateTime.now().day)
                    const Text('Today')
                  else
                    Text(DateFormat('d MMMM').format(event.date)),
                  Text(DateFormat('HH:mm').format(event.date),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(event.description),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  if (event.isAvailable)
                    TextButton(
                        onPressed: () {},
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Buy ticket',
                              style: TextStyle(color: Colors.white,
                                fontSize: 12
                              ),
                            )))
                  else
                    const Text('Sold out',
                      textAlign: TextAlign.center,
                    )
                ],
              ))
        ],
      ),
    );
  }
}
