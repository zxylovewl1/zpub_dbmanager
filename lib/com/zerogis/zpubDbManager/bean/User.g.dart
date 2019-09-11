// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..ret = json['ret'] as int
    ..errcode = json['errcode']
    ..msg = json['msg'] as String
    ..reg = json['reg'] as List
    ..isSucess = json['isSucess'] as bool
    ..glid = json['glid'] as int
    ..creator = json['creator'] as int
    ..gender = json['gender'] as int
    ..no = json['no'] as String
    ..name = json['name'] as String
    ..fno = json['fno'] as String
    ..hrno = json['hrno'] as String
    ..nickname = json['nickname'] as String
    ..email = json['email'] as String
    ..cell = json['cell'] as String
    ..telno = json['telno'] as String
    ..faxno = json['faxno'] as String
    ..address = json['address'] as String
    ..zipcode = json['zipcode'] as String
    ..jjlxr = json['jjlxr'] as String
    ..jjlxdh = json['jjlxdh'] as String
    ..memo = json['memo'] as String
    ..urlCrypt = json['urlCrypt'] as bool
    ..organs = (json['organs'] as List)
        ?.map((e) => e == null
            ? null
            : InitSvrUserOrgans.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..depart = json['depart'] as String
    ..position = json['position'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'ret': instance.ret,
      'errcode': instance.errcode,
      'msg': instance.msg,
      'reg': instance.reg,
      'isSucess': instance.isSucess,
      'glid': instance.glid,
      'creator': instance.creator,
      'gender': instance.gender,
      'no': instance.no,
      'name': instance.name,
      'fno': instance.fno,
      'hrno': instance.hrno,
      'nickname': instance.nickname,
      'email': instance.email,
      'cell': instance.cell,
      'telno': instance.telno,
      'faxno': instance.faxno,
      'address': instance.address,
      'zipcode': instance.zipcode,
      'jjlxr': instance.jjlxr,
      'jjlxdh': instance.jjlxdh,
      'memo': instance.memo,
      'urlCrypt': instance.urlCrypt,
      'organs': instance.organs,
      'depart': instance.depart,
      'position': instance.position
    };
