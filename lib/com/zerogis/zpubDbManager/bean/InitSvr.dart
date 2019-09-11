import 'package:json_annotation/json_annotation.dart';

import 'Entity.dart';
import 'Fld.dart';
import 'FldValue.dart';
import 'Plugin.dart';
import 'Syscfg.dart';
import 'User.dart';
import 'Widgets.dart';


part 'InitSvr.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class InitSvr
{
  @JsonKey()
  int dbType;

  @JsonKey()
  User user;

  @JsonKey()
  List<Syscfg> syscfg;

  @JsonKey()
  List<Entity> entity;

  @JsonKey()
  List<Fld> fld;

  @JsonKey()
  List<FldValue> fldvalue;

  @JsonKey()
  List<Plugin> plugins;

  @JsonKey()
  List<Widgets> widgets;

  InitSvr()
  {}

  User getInitSvrUser()
  {
    return user;
  }

  List<Entity> getEntity()
  {
    return entity;
  }

  List<Fld> getFld()
  {
    return fld;
  }

  List<FldValue> getFldvalue()
  {
    return fldvalue;
  }

  List<Syscfg> getSyscfg()
  {
    return syscfg;
  }

  List<Plugin> getPlugin()
  {
    return plugins;
  }

  void setPlugin(List<Plugin> plugin)
  {
    this.plugins = plugin;
  }

  List<Widgets> getWidgets()
  {
    return widgets;
  }

  void setWidgets(List<Widgets> widgets)
  {
    this.widgets = widgets;
  }

  /*
   * 反序列化
   */
  factory InitSvr.fromJson(Map<String, dynamic> json) =>
      _$InitSvrFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$InitSvrToJson(this);
}
