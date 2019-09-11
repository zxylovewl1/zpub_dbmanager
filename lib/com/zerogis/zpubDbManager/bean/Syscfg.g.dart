// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Syscfg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Syscfg _$SyscfgFromJson(Map<String, dynamic> json) {
  return Syscfg()
    ..id = json['id'] as int
    ..keyno = json['keyno'] as String
    ..namee = json['namee'] as String
    ..namec = json['namec'] as String
    ..value = json['value']
    ..memo = json['memo'] as String;
}

Map<String, dynamic> _$SyscfgToJson(Syscfg instance) => <String, dynamic>{
      'id': instance.id,
      'keyno': instance.keyno,
      'namee': instance.namee,
      'namec': instance.namec,
      'value': instance.value,
      'memo': instance.memo
    };
