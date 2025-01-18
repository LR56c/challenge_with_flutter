import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

@immutable
class ShowDateCard extends StatelessWidget {
  ShowDateCard({
    super.key,
    required this.totalSeats,
    required this.availableSeats,
    required this.date,
    required this.onClick,
  });

  int totalSeats;
  int availableSeats;
  DateTime date;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: 50,
        width: 150,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    thumbShape: SliderComponentShape.noThumb,
                    disabledActiveTrackColor: Colors.green,
                    disabledInactiveTrackColor: Colors.grey[800],
                    trackShape: const RectangularSliderTrackShape(),
                    overlayShape: SliderComponentShape.noOverlay,
                    trackHeight: 4.0),
                child: SizedBox(
                  height: 4.0,
                  child: Slider(
                    max: totalSeats.toDouble(),
                    min: 0,
                    value: availableSeats.toDouble(),
                    onChanged: null,
                  ),
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Date.format
                  Text(DateFormat('hh:mm a').format(date).toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
