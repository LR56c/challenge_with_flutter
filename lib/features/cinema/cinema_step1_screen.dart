import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/features/cinema/widgets/selectable_show_date.dart';
import 'package:challenge_with_flutter/features/cinema/widgets/step_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class CinemaStep1Screen extends ConsumerWidget {
  const CinemaStep1Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SelectableShowDate> showDates = [
      SelectableShowDate(
        date: DateTime.now(),
        isSelected: true,
        onDateSelected: (date) {},
      ),
      SelectableShowDate(
        date: DateTime.now(),
        isSelected: false,
        onDateSelected: (date) {},
      ),
      SelectableShowDate(
        date: DateTime.now(),
        label: 'SOLD OUT',
        isSelected: false,
        onDateSelected: (date) {},
      ),
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StepCard(),
          const Gap(8.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Showtimes', style: TextStyle(color: Colors.grey)),
                const Gap(8.0),
                SizedBox(
                  height: 65,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,

                      itemBuilder: (context, index) {
                        final show = showDates[index];
                        return show;
                      },
                      separatorBuilder: (context, index) {
                        return const Gap(16.0);
                      },
                      itemCount: showDates.length),
                )
              ],
            ),
          )
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
