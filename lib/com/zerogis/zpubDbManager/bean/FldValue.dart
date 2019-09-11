import 'package:json_annotation/json_annotation.dart';

part 'FldValue.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class FldValue
{
  @JsonKey()
  int id;
  @JsonKey()
  String sys; //系统号
  @JsonKey()
  String tabname; //表名
  @JsonKey()
  String colname; //列名
  @JsonKey()
  int disporder; //显示顺序
  @JsonKey()
  dynamic dbvalue; //数据库值
  @JsonKey()
  dynamic dispc; //界面显示中文值
  @JsonKey()
  dynamic dispe; //界面显示英文值

  FldValue()
  {}

  int getId()
  {
    return id;
  }

  void setId(int id)
  {
    this.id = id;
  }

  String getSys()
  {
    return sys;
  }

  void setSys(String sys)
  {
    this.sys = sys;
  }

  String getTabname()
  {
    return tabname;
  }

  void setTabname(String tabname)
  {
    this.tabname = tabname;
  }

  String getColname()
  {
    return colname;
  }

  void setColname(String colname)
  {
    this.colname = colname;
  }

  int getDisporder()
  {
    return disporder;
  }

  void setDisporder(int disporder)
  {
    this.disporder = disporder;
  }

  dynamic getDbvalue()
  {
    return dbvalue;
  }

  void setDbvalue(dynamic dbvalue)
  {
    this.dbvalue = dbvalue;
  }

  dynamic getDispc()
  {
    return dispc;
  }

  void setDispc(dynamic dispc)
  {
    this.dispc = dispc;
  }

  dynamic getDispe()
  {
    return dispe;
  }

  void setDispe(dynamic dispe)
  {
    this.dispe = dispe;
  }

  /*
   * 反序列化
   */
  factory FldValue.fromJson(Map<String, dynamic> json) =>
      _$FldValueFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson() => _$FldValueToJson(this);
}
