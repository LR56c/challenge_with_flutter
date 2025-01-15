import 'package:auto_route/annotations.dart';
import 'package:challenge_with_flutter/hooks/use_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

@RoutePage()
class ImageCarouselScreen extends HookConsumerWidget {
  const ImageCarouselScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useCarouselSliderController();
    final current = useState(0);
    const images = [
      "https://images.unsplash.com/photo-1505142468610-359e7d316be0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJlfGVufDB8fDB8fHwy",
      "https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHwy",
      "https://images.unsplash.com/photo-1518495973542-4542c06a5843?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmF0dXJlfGVufDB8fDB8fHwy",
      "https://images.unsplash.com/photo-1529419412599-7bb870e11810?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bmF0dXJlfGVufDB8fDB8fHwy"
    ];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              const Text('Image Carousel'),
              const Gap(16.0),
              CarouselSlider(
                carouselController: controller,
                  items: images.map((e) => Image.network(e)).toList(),
                  options: CarouselOptions(
                    height: 200,
                    onPageChanged: (index, reason) {
                      current.value = index;
                    },
                  )),
              const Gap(16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () {
                      controller.animateToPage(entry.key);
                    },
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (current.value == entry.key)
                              ? Colors.black
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
              const Gap(16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...images.asMap().entries.map((entry) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: (current.value == entry.key) ? 1.0 : 0.3,
                        child: Image.network(
                          entry.value,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    );
                  })
                ],
              )
            ],
          )),
    );
  }
}
