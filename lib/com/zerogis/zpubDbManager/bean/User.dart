import 'package:json_annotation/json_annotation.dart';

import 'InitSvrUserOrgans.dart';
import 'base/BaseModel.dart';

part 'User.g.dart';

/*
 * 用户信息<br/>
 */
@JsonSerializable()
class User extends BaseModel
{
  @JsonKey(name: 'glid')
  int glid;

  @JsonKey(name: 'creator')
  int creator;

  @JsonKey(name: 'gender')
  int gender;

  @JsonKey(name: 'no')
  String no;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'fno')
  String fno;

  @JsonKey(name: 'hrno')
  String hrno;

  @JsonKey(name: 'nickname')
  String nickname;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'cell')
  String cell;

  @JsonKey(name: 'telno')
  String telno;

  @JsonKey(name: 'faxno')
  String faxno;

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'zipcode')
  String zipcode;

  @JsonKey(name: 'jjlxr')
  String jjlxr;

  @JsonKey(name: 'jjlxdh')
  String jjlxdh;

  @JsonKey(name: 'memo')
  String memo;

  @JsonKey()
  bool urlCrypt;

  @JsonKey()
  List<InitSvrUserOrgans> organs;

  @JsonKey()
  String depart;

  @JsonKey()
  String position;

  User()
  {}

  bool getUrlCrypt()
  {
    return urlCrypt;
  }

  String getName()
  {
    return name;
  }

  int getGender()
  {
    return gender;
  }

  String getNo()
  {
    return no;
  }

  List<InitSvrUserOrgans> getOrgans()
  {
    return organs;
  }

  void setOrgans(List<InitSvrUserOrgans> organs)
  {
    this.organs = organs;
  }

  String getDepart()
  {
    return depart;
  }

  void setDepart(String depart)
  {
    this.depart = depart;
  }

  String getPosition()
  {
    return position;
  }

  void setPosition(String position)
  {
    this.position = position;
  }

  /*
   * 反序列化
   */
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$UserToJson(this);
}
