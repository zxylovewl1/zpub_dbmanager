import 'package:json_annotation/json_annotation.dart';

part 'Fld.g.dart';

/*
 * 初始化对象<br/>
 */
@JsonSerializable()
class Fld 
{
  @JsonKey()
  int id;
  @JsonKey()
  String sys;
  @JsonKey()
  String tabname;
  @JsonKey()
  String colname;
  @JsonKey()
  String namec;
  @JsonKey()
  String namee;
  @JsonKey()
  int isnum;
  @JsonKey()
  int disporder;
  @JsonKey()
  int disptype;
  @JsonKey()
  int newedit;
  @JsonKey()
  int editable;
  @JsonKey()
  int nullable;
  @JsonKey()
  int disprows;
  @JsonKey()
  String minval;
  @JsonKey()
  String maxval;
  @JsonKey()
  String defval;
  @JsonKey()
  int minlen;
  @JsonKey()
  int maxlen;
  @JsonKey()
  String groupe;
  @JsonKey()
  String groupc;
  @JsonKey()
  int qrylevel;
  @JsonKey()
  int bzfld;
  @JsonKey()
  int ismcard;
  @JsonKey()
  String pattern;
  @JsonKey()
  String value;
  @JsonKey()
  dynamic tag;

  Fld() 
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

  String getNamec() 
  {
    return namec;
  }

  void setNamec(String namec) 
  {
    this.namec = namec;
  }

  String getNamee() 
  {
    return namee;
  }

  void setNamee(String namee) 
  {
    this.namee = namee;
  }

  int getIsnum() 
  {
    return isnum;
  }

  void setIsnum(int isnum) 
  {
    this.isnum = isnum;
  }

  int getDisporder() 
  {
    return disporder;
  }

  void setDisporder(int disporder) 
  {
    this.disporder = disporder;
  }

  int getDisptype() 
  {
    return disptype;
  }

  void setDisptype(int disptype) 
  {
    this.disptype = disptype;
  }

  int getNewedit() 
  {
    return newedit;
  }

  void setNewedit(int newedit) 
  {
    this.newedit = newedit;
  }

  int getEditable() 
  {
    return editable;
  }

  void setEditable(int editable) 
  {
    this.editable = editable;
  }

  int getNullable() 
  {
    return nullable;
  }

  void setNullable(int nullable) 
  {
    this.nullable = nullable;
  }

  int getDisprows() 
  {
    return disprows;
  }

  void setDisprows(int disprows) 
  {
    this.disprows = disprows;
  }

  String getMinval() 
  {
    return minval;
  }

  void setMinval(String minval) 
  {
    this.minval = minval;
  }

  String getMaxval() 
  {
    return maxval;
  }

  void setMaxval(String maxval) 
  {
    this.maxval = maxval;
  }

  String getDefval() 
  {
    return defval;
  }

  void setDefval(String defval) 
  {
    this.defval = defval;
  }

  int getMinlen() 
  {
    return minlen;
  }

  void setMinlen(int minlen) 
  {
    this.minlen = minlen;
  }

  int getMaxlen() 
  {
    return maxlen;
  }

  void setMaxlen(int maxlen) 
  {
    this.maxlen = maxlen;
  }

  String getGroupe() 
  {
    return groupe;
  }

  void setGroupe(String groupe) 
  {
    this.groupe = groupe;
  }

  String getGroupc() 
  {
    return groupc;
  }

  void setGroupc(String groupc) 
  {
    this.groupc = groupc;
  }

  int getQrylevel() 
  {
    return qrylevel;
  }

  void setQrylevel(int qrylevel) 
  {
    this.qrylevel = qrylevel;
  }

  int getBzfld() 
  {
    return bzfld;
  }

  void setBzfld(int bzfld) 
  {
    this.bzfld = bzfld;
  }

  int getIsmcard() 
  {
    return ismcard;
  }

  void setIsmcard(int ismcard) 
  {
    this.ismcard = ismcard;
  }

  String getPattern() 
  {
    return pattern;
  }

  void setPattern(String pattern) 
  {
    this.pattern = pattern;
  }

  String getValue() 
  {
    return value;
  }

  void setValue(String value) 
  {
    this.value = value;
  }
  /*
   * 反序列化
   */
  factory Fld.fromJson(Map<String, dynamic> json) => _$FldFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson() => _$FldToJson(this);
}
