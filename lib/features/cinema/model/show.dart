import 'package:challenge_with_flutter/features/cinema/model/show_seat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show.freezed.dart';
part 'show.g.dart';

@freezed
class Show with _$Show {
  const factory Show({
    required DateTime time,
    required List<ShowSeat> seats,
  }) = _Show;
  factory Show.fromJson(Map<String, Object?> json) => _$ShowFromJson(json);
}
