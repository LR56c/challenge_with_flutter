import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_seat.freezed.dart';
part 'show_seat.g.dart';

@freezed
class ShowSeat with _$ShowSeat {
  const factory ShowSeat({
    required String id,
    required String row,
    required int number,
    required bool isAvailable,
    required int seatStatus,
  }) = _ShowSeat;
  factory ShowSeat.fromJson(Map<String, Object?> json) => _$ShowSeatFromJson(json);
}
