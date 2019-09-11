// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FldValue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FldValue _$FldValueFromJson(Map<String, dynamic> json) {
  return FldValue()
    ..id = json['id'] as int
    ..sys = json['sys'] as String
    ..tabname = json['tabname'] as String
    ..colname = json['colname'] as String
    ..disporder = json['disporder'] as int
    ..dbvalue = json['dbvalue']
    ..dispc = json['dispc']
    ..dispe = json['dispe'];
}

Map<String, dynamic> _$FldValueToJson(FldValue instance) => <String, dynamic>{
      'id': instance.id,
      'sys': instance.sys,
      'tabname': instance.tabname,
      'colname': instance.colname,
      'disporder': instance.disporder,
      'dbvalue': instance.dbvalue,
      'dispc': instance.dispc,
      'dispe': instance.dispe
    };
