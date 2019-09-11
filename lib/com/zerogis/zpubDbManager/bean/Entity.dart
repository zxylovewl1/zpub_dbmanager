import 'package:json_annotation/json_annotation.dart';

import 'base/BaseModel.dart';

part 'Entity.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class Entity extends BaseModel
{
  @JsonKey()
  String name;
  @JsonKey()
  String namee;
  @JsonKey()
  String namec;
  @JsonKey()
  int major;
  @JsonKey()
  int minor;
  @JsonKey()
  int domain;
  @JsonKey()
  String tabgrp;
  @JsonKey()
  String tabatt;
  @JsonKey()
  int glmaj;
  @JsonKey()
  int glmin;

  @JsonKey()
  int type;

  @JsonKey()
  int log;
  @JsonKey()
  String form;
  @JsonKey()
  String func;

  Entity()
  {}

  int getId()
  {
    return this.id;
  }

  void setId(int id)
  {
    this.id = id;
  }

  String getName()
  {
    return name;
  }

  void setName(String name)
  {
    this.name = name;
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

  int getMajor()
  {
    return major;
  }

  void setMajor(int major)
  {
    this.major = major;
  }

  int getMinor()
  {
    return minor;
  }

  void setMinor(int minor)
  {
    this.minor = minor;
  }

  int getDomain()
  {
    return domain;
  }

  void setDomain(int domain)
  {
    this.domain = domain;
  }

  String getTabgrp()
  {
    return tabgrp;
  }

  void setTabgrp(String tabgrp)
  {
    this.tabgrp = tabgrp;
  }

  String getTabatt()
  {
    return tabatt;
  }

  void setTabatt(String tabatt)
  {
    this.tabatt = tabatt;
  }

  int getGlmaj()
  {
    return glmaj;
  }

  void setGlmaj(int glmaj)
  {
    this.glmaj = glmaj;
  }

  int getGlmin()
  {
    return glmin;
  }

  void setGlmin(int glmin)
  {
    this.glmin = glmin;
  }

  int getType()
  {
    return type;
  }

  void setType(int type)
  {
    this.type = type;
  }

  int getLog()
  {
    return log;
  }

  void setLog(int log)
  {
    this.log = log;
  }

  String getForm()
  {
    return form;
  }

  void setForm(String form)
  {
    this.form = form;
  }

  String getFunc()
  {
    return func;
  }

  void setFunc(String func)
  {
    this.func = func;
  }

  /*
   * 反序列化
   */
  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson() => _$EntityToJson(this);
}
