import 'package:challenge_with_flutter/extensions/icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../model/social.dart';

@immutable
class ProfileCard extends StatelessWidget {
  ProfileCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.socialName,
    required this.description,
    required this.social,
  });

  String name;
  String imageUrl;
  String socialName;
  String description;
  List<Social> social;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 200,
        child: WaveWidget(
          config: CustomConfig(
            colors: [
              Colors.pink[500]!,
              Colors.pink[400]!,
              Colors.pink[300]!,
            ],
            // durations: [18000, 8000, 5000, 12000],
            durations: [4000, 5000, 6000],
            heightPercentages: [0.85, 0.86, 0.88],
          ),
          backgroundColor: Colors.pink[600]!,
          size: const Size(double.infinity, double.infinity),
          waveAmplitude: 15.0,
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 96.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999.0),
              ),
              child: Image.network(imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                  alignment: Alignment.center),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '@$socialName',
          ),
          const Gap(24.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...social.map((e) {
                return Row(
                  children: [
                    e.icon.iconify(color: Colors.black, size: 24),
                    const Gap(24.0),
                  ],
                );
              }),
            ],
          ),
          const Gap(24.0),
          Text(
            description,
          ),
          const Gap(24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(16.0),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(Size(0, 50)),
                      backgroundColor: WidgetStateProperty.all(Colors.pink[300]),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const Gap(16.0),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(Size(0, 50)),
                      side: WidgetStateProperty.all(
                          BorderSide(color: Colors.black26)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Message',
                      style: TextStyle(color: Colors.black26),
                    )),
              ),
              const Gap(16.0),
            ],
          )
        ],
      ),
    ]);
  }
}
