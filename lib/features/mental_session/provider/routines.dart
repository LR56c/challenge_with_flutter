import 'dart:math';

import 'package:challenge_with_flutter/features/mental_session/model/routine.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../model/session.dart';

part 'routines.g.dart';

@riverpod
class Routines extends _$Routines {
  @override
  Future<List<Routine>> build() async {
    return List.generate(5, (index) {
      final routine = Routine(
        id: const Uuid().v4(),
        title: 'Routine $index',
        category: 'Category $index',
        imageUrl: 'https://picsum.photos/200/200',
        sessions: List.generate(5, (index) {
          final day = DateTime.now().subtract(Duration(days: index));
          final random = Random(1000);
          final session = Session(
            id: const Uuid().v4(),
            title: 'Session $index',
            description: 'Description $index',
            imageUrl: 'https://picsum.photos/200/200?random=$random',
            duration: Random().nextInt(480) + 120,
            isNew: DateTime.now().difference(day).inDays < 7,
            createdAt: day,
          );
          return session;
        }),
      );
      return routine;
    });
  }
}
