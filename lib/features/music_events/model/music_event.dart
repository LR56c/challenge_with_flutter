import 'package:freezed_annotation/freezed_annotation.dart';
part 'music_event.freezed.dart';
part 'music_event.g.dart';

@freezed
class MusicEvent with _$MusicEvent {
  const factory MusicEvent({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required bool isAvailable,
  }) = _MusicEvent;
  factory MusicEvent.fromJson(Map<String, Object?> json) => _$MusicEventFromJson(json);
}
