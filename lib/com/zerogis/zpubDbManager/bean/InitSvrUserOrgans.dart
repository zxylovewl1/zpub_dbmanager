import 'package:json_annotation/json_annotation.dart';

part 'InitSvrUserOrgans.g.dart';

/*
 * 用户信息<br/>
 */
@JsonSerializable()
class InitSvrUserOrgans
{
  @JsonKey()
  int id;
  @JsonKey()
  String position;
  @JsonKey()
  String code;
  @JsonKey()
  String namee;
  @JsonKey()
  String namec;

  InitSvrUserOrgans()
  {}


  int getId()
  {
    return id;
  }

  void setId(int id)
  {
    this.id = id;
  }

  String getPosition()
  {
    return position;
  }

  void setPosition(String position)
  {
    this.position = position;
  }

  String getCode()
  {
    return code;
  }

  void setCode(String code)
  {
    this.code = code;
  }

  String getNamee()
  {
    return namee;
  }

  void setNamee(String namee)
  {
    this.namee = namee;
  }

  String getNamec()
  {
    return namec;
  }

  void setNamec(String namec)
  {
    this.namec = namec;
  }

  /*
   * 反序列化
   */
  factory InitSvrUserOrgans.fromJson(Map<String, dynamic> json) =>
      _$InitSvrUserOrgansFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$InitSvrUserOrgansToJson(this);
}
