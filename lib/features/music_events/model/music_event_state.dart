import 'package:challenge_with_flutter/features/music_events/model/music_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'music_event_state.freezed.dart';

@freezed
class MusicEventState with _$MusicEventState {
  const factory MusicEventState.loading() = MusicEventLoading;
  const factory MusicEventState.error() = MusicEventError;
  const factory MusicEventState.data(String location,List<MusicEvent> list) = MusicEventData;
}
