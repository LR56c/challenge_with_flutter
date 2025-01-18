// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowSeatImpl _$$ShowSeatImplFromJson(Map<String, dynamic> json) =>
    _$ShowSeatImpl(
      id: json['id'] as String,
      row: json['row'] as String,
      number: (json['number'] as num).toInt(),
      seatStatus: (json['seatStatus'] as num).toInt(),
    );

Map<String, dynamic> _$$ShowSeatImplToJson(_$ShowSeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'number': instance.number,
      'seatStatus': instance.seatStatus,
    };
