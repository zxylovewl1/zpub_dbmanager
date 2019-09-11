// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InitSvrUserOrgans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitSvrUserOrgans _$InitSvrUserOrgansFromJson(Map<String, dynamic> json) {
  return InitSvrUserOrgans()
    ..id = json['id'] as int
    ..position = json['position'] as String
    ..code = json['code'] as String
    ..namee = json['namee'] as String
    ..namec = json['namec'] as String;
}

Map<String, dynamic> _$InitSvrUserOrgansToJson(InitSvrUserOrgans instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'code': instance.code,
      'namee': instance.namee,
      'namec': instance.namec
    };
