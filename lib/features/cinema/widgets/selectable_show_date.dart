import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

@immutable
class SelectableShowDate extends ConsumerWidget {
  SelectableShowDate({
    super.key,
    this.isSelected = false,
    this.label,
    required this.date,
    required this.onDateSelected,
    this.width = 120,
    this.height = 65,
  });

  bool isSelected;
  String? label;
  DateTime date;
  double width;
  double height;
  final Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        // if(isSelected || label != null) return;
        onDateSelected(date);
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green.withOpacity(0.3) : Colors.black,
          border: Border.all(
            color: isSelected ? Colors.green : Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('hh:mm a').format(date),
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if(label != null)
              Text(
                label!,
                style: const TextStyle(
                  color: Colors.red,
                ),
              )

            else if(!isSelected)
              Text(
                '${DateFormat('d MMM').format(date).toUpperCase()} (${DateFormat('E').format(date)})',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
