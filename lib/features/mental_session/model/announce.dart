import 'package:freezed_annotation/freezed_annotation.dart';

part 'announce.freezed.dart';
part 'announce.g.dart';

@freezed
class Announce with _$Announce {
  const factory Announce({
    required String id,
    required String title,
    required String description,
    required String icon,
    required String color,
  }) = _Announce;
  factory Announce.fromJson(Map<String, Object?> json) => _$AnnounceFromJson(json);
}
