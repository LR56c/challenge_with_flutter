import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

CarouselSliderController useCarouselSliderController(){
  return use(const _CarouselSliderControllerHook());
}

class _CarouselSliderControllerHook extends Hook<CarouselSliderController> {
  const _CarouselSliderControllerHook({List<Object?>? keys}) : super(keys: keys);

  @override
  HookState<CarouselSliderController, Hook<CarouselSliderController>> createState() => _CarouselSliderControllerHookState();
}

class _CarouselSliderControllerHookState extends HookState<CarouselSliderController, _CarouselSliderControllerHook> {
  late final controller = CarouselSliderController();

  @override
  CarouselSliderController build(BuildContext context) => controller;

  @override
  String get debugLabel => 'useCarouselSliderController';
}
