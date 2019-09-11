import 'package:json_annotation/json_annotation.dart';

part 'Syscfg.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class Syscfg
{
  @JsonKey()
  int id;
  @JsonKey()
  String keyno;
  @JsonKey()
  String namee;
  @JsonKey()
  String namec;
  @JsonKey()
  dynamic value;
  @JsonKey()
  String memo;

  Syscfg()
  {}

  dynamic getKeyno()
  {
    return keyno;
  }

  dynamic getValue()
  {
    return value;
  }

  /*
   * 反序列化
   */
  factory Syscfg.fromJson(Map<String, dynamic> json) => _$SyscfgFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$SyscfgToJson(this);
}
