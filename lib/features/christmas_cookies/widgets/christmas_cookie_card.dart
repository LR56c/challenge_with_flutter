import 'package:challenge_with_flutter/extensions/string.dart';
import 'package:challenge_with_flutter/features/christmas_cookies/model/christmas_cookie.dart';
import 'package:challenge_with_flutter/features/christmas_cookies/widgets/christmas_badge.dart';
import 'package:challenge_with_flutter/features/mental_session/widgets/session_card.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:time/time.dart';

@immutable
class ChristmasCookieCard extends StatelessWidget {
  ChristmasCookieCard({
    super.key,
    required this.cookie,
  });

  ChristmasCookie cookie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Image.network(
                cookie.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ChristmasBadge(
                      icon: Icons.star_border_rounded,
                      label: cookie.averageReview.toStringAsFixed(1),
                    ),
                    const Gap(8.0),
                    ChristmasBadge(
                      icon: Icons.assessment_outlined,
                      label: cookie.difficulty.name.toTitleCase(),
                    ),
                    const Gap(8.0),
                    ChristmasBadge(
                      icon: Icons.timer_outlined,
                      label: cookie.duration.seconds.pretty(
                        abbreviated: true,
                        tersity: DurationTersity.minute,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Gap(16.0),
        Text(cookie.title,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}
