import 'package:json_annotation/json_annotation.dart';

import 'base/BaseModel.dart';

part 'Widgets.g.dart';

/*
 * 类描述：组件表
 * 作者：郑朝军 on 2019/6/4
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/6/4
 * 修改备注：
 */
@JsonSerializable()
class Widgets extends BaseModel
{
  /*
   * 名称
   */
  String name;

  /*
   * 是否自动运行
   */
  int autorun;

  /*
   * 前置插件(自动允许多个插件的时候，按照一定的顺序进行执行)
   */
  String prereq;

  /*
   * 高度
   */
  int height;

  /*
   * 宽度
   */
  String width;

  /*
   * 是否模态对话框
   */
  int modal;

  /*
   * 是否模态对话框
   */
  int type;

  /*
   * 初始化参数
   */
  String initpara;

  /*
   * 系统号
   */
  int sys;

  /*
   * 类文件
   */
  String classurl;

  /*
   * 插件所在目录
   */
  String dir;

  Widgets()
  {}

  String getName()
  {
    return name;
  }

  void setName(String name)
  {
    this.name = name;
  }

  int getAutorun()
  {
    return autorun;
  }

  void setAutorun(int autorun)
  {
    this.autorun = autorun;
  }

  String getPrereq()
  {
    return prereq;
  }

  void setPrereq(String prereq)
  {
    this.prereq = prereq;
  }

  int getHeight()
  {
    return height;
  }

  void setHeight(int height)
  {
    this.height = height;
  }

  int getModal()
  {
    return modal;
  }

  void setModal(int modal)
  {
    this.modal = modal;
  }

  String getWidth()
  {
    return width;
  }

  void setWidth(String width)
  {
    this.width = width;
  }

  String getInitpara()
  {
    return initpara;
  }

  void setInitpara(String initpara)
  {
    this.initpara = initpara;
  }

  int getSys()
  {
    return sys;
  }

  void setSys(int sys)
  {
    this.sys = sys;
  }


  String getClassurl()
  {
    return classurl;
  }

  void setClassurl(String classurl)
  {
    this.classurl = classurl;
  }

  String getDir()
  {
    return dir;
  }

  void setDir(String dir)
  {
    this.dir = dir;
  }

  /*
   * 反序列化
   */
  factory Widgets.fromJson(Map<String, dynamic> json) =>
      _$WidgetsFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$WidgetsToJson(this);
}
