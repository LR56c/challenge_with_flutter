import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CinemaStep1Screen extends ConsumerWidget {
  const CinemaStep1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[900],
      body: const Column(
        children: [
          Text('Cinema Step 1'),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Column(
          children: [
            Text('Cinema Step 1'),
          ],
        ),
      ),
    ));
  }
}
