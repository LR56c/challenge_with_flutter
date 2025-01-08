import 'dart:math';

import 'package:challenge_with_flutter/features/christmas_cookies/model/christmas_cookie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../model/difficulty_enum.dart';

part 'christmas_cookies.g.dart';

@riverpod
class ChristmasCookies extends _$ChristmasCookies {
  @override
  Future<List<ChristmasCookie>> build() async {
    return List.generate(
      4,
      (index) => ChristmasCookie(
          id: const Uuid().v4(),
          title: 'Cookie $index',
          imageUrl: 'https://picsum.photos/200/200',
          duration: Random().nextInt(2700) + 300,
          difficulty: DifficultyEnum
              .values[Random().nextInt(DifficultyEnum.values.length)],
          averageReview: 3.0 + (Random().nextDouble() * (5.0 - 3.0))),
    );
  }
}
