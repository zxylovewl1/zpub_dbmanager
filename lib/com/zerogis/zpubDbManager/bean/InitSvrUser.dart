import 'package:json_annotation/json_annotation.dart';

import 'InitSvrUserOrgans.dart';

part 'InitSvrUser.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class InitSvrUser
{
  @JsonKey()
  int creator;
  @JsonKey()
  int gender;
  @JsonKey()
  int glid;
  @JsonKey()
  int id;
  @JsonKey()
  int ismanager;
  @JsonKey()
  int sys;
  @JsonKey()
  int type;
  @JsonKey()
  String address;
  @JsonKey()
  String cell;
  @JsonKey()
  String email;
  @JsonKey()
  String faxno;
  @JsonKey()
  String fno;
  @JsonKey()
  String hrno;
  @JsonKey()
  int ischeck;
  @JsonKey()
  String jjlxdh;
  @JsonKey()
  String jjlxr;
  @JsonKey()
  String lastwin;
  @JsonKey()
  String memo;
  @JsonKey()
  String name;
  @JsonKey()
  String nickname;
  @JsonKey()
  String no;
  @JsonKey()
  String note;
  @JsonKey()
  String password;
  @JsonKey()
  String telno;
  @JsonKey()
  String time;
  @JsonKey()
  String tools;
  @JsonKey()
  String vrycode;
  @JsonKey()
  String vrytime;
  @JsonKey()
  String zipcode;
  @JsonKey()
  List<InitSvrUserOrgans> organs;

  InitSvrUser()
  {}

  /*
   * 反序列化
   */
  factory InitSvrUser.fromJson(Map<String, dynamic> json) =>
      _$InitSvrUserFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson() => _$InitSvrUserToJson(this);
}
