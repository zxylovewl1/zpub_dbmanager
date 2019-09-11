import 'package:json_annotation/json_annotation.dart';

import 'base/BaseModel.dart';

part 'Plugin.g.dart';

/*
 * 类描述：插件表
 * 作者：郑朝军 on 2019/5/29
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/29
 * 修改备注：
 */
@JsonSerializable()
class Plugin extends BaseModel
{
  /*
   * 分类
   */
  String cata;

  /*
   *类文件
   */
  String classurl;

  /*
   * 是否可关闭
   */
  int closeable;

  /*
   * 插件所在目录
   */
  String dir;

  /*
   * 图标文件
   */
  String icon;

  /*
   * 初始化参数
   */
  String initpara;

  /*
   * 名称
   */
  String name;

  /*
   * 多例运行
   */
  int runn;

  /*
   * 系统号
   */
  String sys;

  /*
   * 插件中文标题
   */
  String titlec;

  /*
   * 插件英文标题
   */
  String titlee;

  /*
   * 父插件
   */
  String pname;

  /*
   * 界面类型[1=createWidgetsListView,2=createWidgetsCardListView,3=createWidgetsRefresh]
   */
  int uitype;

  /*
   * 插件容器：配置多个组件
   */
  String widgets;

  /*
   * 插件里面配置服务
   */
  String service;

  /*
   * 高度[只有为组件的时候才有用到]
   */
  String height;

  /*
   * 宽度[只有为组件的时候才有用到]
   */
  String width;

  /*
   * 是否模态对话框[默认为0]
   */
  int modal;

  /*
   * 插件或者组件[1=插件,2=组件]
   */
  int type;

  Plugin()
  {}

  String getCata()
  {
    return cata;
  }

  void setCata(String cata)
  {
    this.cata = cata;
  }

  String getClassurl()
  {
    return classurl;
  }

  void setClassurl(String classurl)
  {
    this.classurl = classurl;
  }

  int getCloseable()
  {
    return closeable;
  }

  void setCloseable(int closeable)
  {
    this.closeable = closeable;
  }

  String getDir()
  {
    return dir;
  }

  void setDir(String dir)
  {
    this.dir = dir;
  }

  String getIcon()
  {
    return icon;
  }

  void setIcon(String icon)
  {
    this.icon = icon;
  }

  String getInitpara()
  {
    return initpara;
  }

  void setInitpara(String initpara)
  {
    this.initpara = initpara;
  }

  String getName()
  {
    return name;
  }

  void setName(String name)
  {
    this.name = name;
  }

  int getRunn()
  {
    return runn;
  }

  void setRunn(int runn)
  {
    this.runn = runn;
  }

  String getSys()
  {
    return sys;
  }

  void setSys(String sys)
  {
    this.sys = sys;
  }

  String getTitlec()
  {
    return titlec;
  }

  void setTitlec(String titlec)
  {
    this.titlec = titlec;
  }

  String getTitlee()
  {
    return titlee;
  }

  void setTitlee(String titlee)
  {
    this.titlee = titlee;
  }

  String getPname()
  {
    return pname;
  }

  void setPname(String pname)
  {
    this.pname = pname;
  }

  int getUitype()
  {
    return uitype;
  }

  void setUitype(int uitype)
  {
    this.uitype = uitype;
  }

  String getWidgets()
  {
    return widgets;
  }

  void setWidgets(String widgets)
  {
    this.widgets = widgets;
  }

  String getService()
  {
    return service;
  }

  void setService(String service)
  {
    this.service = service;
  }

  String getHeight()
  {
    return height;
  }

  void setHeight(String height)
  {
    this.height = height;
  }

  String getWidth()
  {
    return width;
  }

  void setWidth(String width)
  {
    this.width = width;
  }

  int getModal()
  {
    return modal;
  }

  void setModal(int modal)
  {
    this.modal = modal;
  }

  int getType()
  {
    return type;
  }

  void setType(int type)
  {
    this.type = type;
  }

  /*
   * 反序列化
   */
  factory Plugin.fromJson(Map<String, dynamic> json) => _$PluginFromJson(json);

  /*
   * 序列化
   */
  Map<String, dynamic> toJson()
  => _$PluginToJson(this);
}
