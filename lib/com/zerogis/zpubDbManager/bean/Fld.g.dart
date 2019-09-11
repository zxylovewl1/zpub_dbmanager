// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Fld.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fld _$FldFromJson(Map<String, dynamic> json) {
  return Fld()
    ..id = json['id'] as int
    ..sys = json['sys'] as String
    ..tabname = json['tabname'] as String
    ..colname = json['colname'] as String
    ..namec = json['namec'] as String
    ..namee = json['namee'] as String
    ..isnum = json['isnum'] as int
    ..disporder = json['disporder'] as int
    ..disptype = json['disptype'] as int
    ..newedit = json['newedit'] as int
    ..editable = json['editable'] as int
    ..nullable = json['nullable'] as int
    ..disprows = json['disprows'] as int
    ..minval = json['minval'] as String
    ..maxval = json['maxval'] as String
    ..defval = json['defval'] as String
    ..minlen = json['minlen'] as int
    ..maxlen = json['maxlen'] as int
    ..groupe = json['groupe'] as String
    ..groupc = json['groupc'] as String
    ..qrylevel = json['qrylevel'] as int
    ..bzfld = json['bzfld'] as int
    ..ismcard = json['ismcard'] as int
    ..pattern = json['pattern'] as String
    ..value = json['value'] as String
    ..tag = json['tag'];
}

Map<String, dynamic> _$FldToJson(Fld instance) => <String, dynamic>{
      'id': instance.id,
      'sys': instance.sys,
      'tabname': instance.tabname,
      'colname': instance.colname,
      'namec': instance.namec,
      'namee': instance.namee,
      'isnum': instance.isnum,
      'disporder': instance.disporder,
      'disptype': instance.disptype,
      'newedit': instance.newedit,
      'editable': instance.editable,
      'nullable': instance.nullable,
      'disprows': instance.disprows,
      'minval': instance.minval,
      'maxval': instance.maxval,
      'defval': instance.defval,
      'minlen': instance.minlen,
      'maxlen': instance.maxlen,
      'groupe': instance.groupe,
      'groupc': instance.groupc,
      'qrylevel': instance.qrylevel,
      'bzfld': instance.bzfld,
      'ismcard': instance.ismcard,
      'pattern': instance.pattern,
      'value': instance.value,
      'tag': instance.tag
    };
