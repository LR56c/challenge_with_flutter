import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    required int duration,
    required bool isNew,
    required DateTime createdAt,
  }) = _Session;
  factory Session.fromJson(Map<String, Object?> json) => _$SessionFromJson(json);
}
