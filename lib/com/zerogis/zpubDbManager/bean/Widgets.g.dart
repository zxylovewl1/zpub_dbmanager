// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Widgets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Widgets _$WidgetsFromJson(Map<String, dynamic> json) {
  return Widgets()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..autorun = json['autorun'] as int
    ..prereq = json['prereq'] as String
    ..height = json['height'] as int
    ..width = json['width'] as String
    ..modal = json['modal'] as int
    ..type = json['type'] as int
    ..initpara = json['initpara'] as String
    ..sys = json['sys'] as int
    ..classurl = json['classurl'] as String
    ..dir = json['dir'] as String;
}

Map<String, dynamic> _$WidgetsToJson(Widgets instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'autorun': instance.autorun,
      'prereq': instance.prereq,
      'height': instance.height,
      'width': instance.width,
      'modal': instance.modal,
      'type': instance.type,
      'initpara': instance.initpara,
      'sys': instance.sys,
      'classurl': instance.classurl,
      'dir': instance.dir
    };
