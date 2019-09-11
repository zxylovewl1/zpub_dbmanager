// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InitSvrUser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitSvrUser _$InitSvrUserFromJson(Map<String, dynamic> json) {
  return InitSvrUser()
    ..creator = json['creator'] as int
    ..gender = json['gender'] as int
    ..glid = json['glid'] as int
    ..id = json['id'] as int
    ..ismanager = json['ismanager'] as int
    ..sys = json['sys'] as int
    ..type = json['type'] as int
    ..address = json['address'] as String
    ..cell = json['cell'] as String
    ..email = json['email'] as String
    ..faxno = json['faxno'] as String
    ..fno = json['fno'] as String
    ..hrno = json['hrno'] as String
    ..ischeck = json['ischeck'] as int
    ..jjlxdh = json['jjlxdh'] as String
    ..jjlxr = json['jjlxr'] as String
    ..lastwin = json['lastwin'] as String
    ..memo = json['memo'] as String
    ..name = json['name'] as String
    ..nickname = json['nickname'] as String
    ..no = json['no'] as String
    ..note = json['note'] as String
    ..password = json['password'] as String
    ..telno = json['telno'] as String
    ..time = json['time'] as String
    ..tools = json['tools'] as String
    ..vrycode = json['vrycode'] as String
    ..vrytime = json['vrytime'] as String
    ..zipcode = json['zipcode'] as String
    ..organs = (json['organs'] as List)
        ?.map((e) => e == null
            ? null
            : InitSvrUserOrgans.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$InitSvrUserToJson(InitSvrUser instance) =>
    <String, dynamic>{
      'creator': instance.creator,
      'gender': instance.gender,
      'glid': instance.glid,
      'id': instance.id,
      'ismanager': instance.ismanager,
      'sys': instance.sys,
      'type': instance.type,
      'address': instance.address,
      'cell': instance.cell,
      'email': instance.email,
      'faxno': instance.faxno,
      'fno': instance.fno,
      'hrno': instance.hrno,
      'ischeck': instance.ischeck,
      'jjlxdh': instance.jjlxdh,
      'jjlxr': instance.jjlxr,
      'lastwin': instance.lastwin,
      'memo': instance.memo,
      'name': instance.name,
      'nickname': instance.nickname,
      'no': instance.no,
      'note': instance.note,
      'password': instance.password,
      'telno': instance.telno,
      'time': instance.time,
      'tools': instance.tools,
      'vrycode': instance.vrycode,
      'vrytime': instance.vrytime,
      'zipcode': instance.zipcode,
      'organs': instance.organs
    };
