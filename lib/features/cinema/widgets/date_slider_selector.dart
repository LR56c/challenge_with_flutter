import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DateSliderSelector extends HookConsumerWidget {
  const DateSliderSelector({
    super.key,
    required this.initialDate,
    required this.rangeDates,
    required this.onDateSelected,
  });

  final DateTime initialDate;
  final List<DateTime> rangeDates;
  final Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDate = useState<DateTime>(initialDate);
    final scroll = useScrollController();
    return Row(
      children: [
        const Gap(8.0),
        Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {
                  if (scroll.position.isScrollingNotifier.value) return;
                  scroll.animateTo(
                    scroll.offset - 105.0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(Icons.arrow_back_ios))),
        Expanded(
          flex: 7,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              controller: scroll,
              itemBuilder: (context, index) {
                final date = rangeDates[index];
                final isSelected = date == currentDate.value;
                return GestureDetector(
                  onTap: () {
                    currentDate.value = date;
                    onDateSelected(date);
                    scroll.animateTo(
                      index * 105.0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (date.day == DateTime.now().day)
                              Text('TODAY',
                                  style: TextStyle(
                                      color:  isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.bold))
                            else
                              Text(DateFormat('E').format(date).toUpperCase(),
                                  style:  TextStyle(
                                      color:  isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.bold)),
                            Text(DateFormat('d-MMM').format(date).toUpperCase(),
                                style: TextStyle(
                                  color:  isSelected ? Colors.white : Colors.white.withOpacity(0.5),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        width: 85,
                        height: 5,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.red : Colors.grey[800],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Gap(24.0);
              },
              itemCount: rangeDates.length),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                if (scroll.position.isScrollingNotifier.value) return;
                scroll.animateTo(
                  scroll.offset + 105.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ),
        const Gap(8.0),
      ],
    );
  }
}
