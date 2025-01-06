import 'package:challenge_with_flutter/features/mental_session/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine.freezed.dart';
part 'routine.g.dart';

@freezed
class Routine with _$Routine {
  const factory Routine({
    required String id,
    required String title,
    required String category,
    required String imageUrl,
    required List<Session> sessions,
  }) = _Routine;
  factory Routine.fromJson(Map<String, Object?> json) => _$RoutineFromJson(json);
}
