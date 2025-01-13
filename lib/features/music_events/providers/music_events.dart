import 'package:challenge_with_flutter/features/music_events/model/music_event_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

import '../model/music_event.dart';

part 'music_events.g.dart';

@riverpod
MusicEventState musicEvents(Ref ref) {
  return MusicEventData('London, United Kingdom', [
    MusicEvent(
      id: const Uuid().v4(),
      title: 'Music Event 1',
      description: 'Music event description 1',
      date: DateTime.now(),
      isAvailable: false,
    ),
    MusicEvent(
      id: const Uuid().v4(),
      title: 'Music Event 2',
      description: 'Music event description 2',
      date: DateTime.now(),
      isAvailable: true,
    ),
    MusicEvent(
      id: const Uuid().v4(),
      title: 'Music Event 3',
      description: 'Music event description 3',
      date: DateTime.now(),
      isAvailable: true,
    ),
  ]);
}
