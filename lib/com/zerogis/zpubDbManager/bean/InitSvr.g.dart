// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InitSvr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitSvr _$InitSvrFromJson(Map<String, dynamic> json) {
  return InitSvr()
    ..dbType = json['dbType'] as int
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>)
    ..syscfg = (json['syscfg'] as List)
        ?.map((e) =>
            e == null ? null : Syscfg.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..entity = (json['entity'] as List)
        ?.map((e) =>
            e == null ? null : Entity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..fld = (json['fld'] as List)
        ?.map((e) => e == null ? null : Fld.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..fldvalue = (json['fldvalue'] as List)
        ?.map((e) =>
            e == null ? null : FldValue.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..plugins = (json['plugins'] as List)
        ?.map((e) =>
            e == null ? null : Plugin.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..widgets = (json['widgets'] as List)
        ?.map((e) =>
            e == null ? null : Widgets.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$InitSvrToJson(InitSvr instance) => <String, dynamic>{
      'dbType': instance.dbType,
      'user': instance.user,
      'syscfg': instance.syscfg,
      'entity': instance.entity,
      'fld': instance.fld,
      'fldvalue': instance.fldvalue,
      'plugins': instance.plugins,
      'widgets': instance.widgets
    };
