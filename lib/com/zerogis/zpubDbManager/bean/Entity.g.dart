// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return Entity()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..namee = json['namee'] as String
    ..namec = json['namec'] as String
    ..major = json['major'] as int
    ..minor = json['minor'] as int
    ..domain = json['domain'] as int
    ..tabgrp = json['tabgrp'] as String
    ..tabatt = json['tabatt'] as String
    ..glmaj = json['glmaj'] as int
    ..glmin = json['glmin'] as int
    ..type = json['type'] as int
    ..log = json['log'] as int
    ..form = json['form'] as String
    ..func = json['func'] as String;
}

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'namee': instance.namee,
      'namec': instance.namec,
      'major': instance.major,
      'minor': instance.minor,
      'domain': instance.domain,
      'tabgrp': instance.tabgrp,
      'tabatt': instance.tabatt,
      'glmaj': instance.glmaj,
      'glmin': instance.glmin,
      'type': instance.type,
      'log': instance.log,
      'form': instance.form,
      'func': instance.func
    };
