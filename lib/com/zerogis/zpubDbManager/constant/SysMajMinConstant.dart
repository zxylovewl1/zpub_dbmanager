/*
 * 类描述：主子类型定义
 * 作者：郑朝军 on 2019/6/14
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/6/14
 * 修改备注：
 */
class SysMajMinConstant
{
  /*
   * -------------------------系统级别相关------------------------------------
   */
  /*
   * 系统号相关
   */
  static final int SYS_NO_99 = 99;
  static final int SYS_NO_21 = 21;
  static final int SYS_NO_31 = 31;

  /*
   * 主类型相关
   */
  static final int MAJOR_SYS = 99;
  static final int MAJOR_PNT = 1; //点
  static final int MAJOR_LINE = 2; //线
  static final int MAJOR_REG = 3; //面
  static final int MAJOR_TEXT = 4; //注记
  static final int MAJOR_PAT = 7; //巡检主类型
  static final int MAJOR_MAPPNT = 81; //map点
  static final int MAJOR_MAPLIN = 82; //map线
  static final int MAJOR_MAPPOL = 83; //map面
  static final int MAJOR_REGPNT = 84; //reg点
  static final int MAJOR_REGLIN = 85; //reg线

  /*
   * 子类型相关
   */
  static final int MINOR_SYS_DEF = 1;
  static final int MINOR_SYS_CFG = 2;
  static final int MINOR_SYS_CACHE = 3;
  static final int MINOR_SYS_ENT = 4;
  static final int MINOR_SYS_FLD = 5;
  static final int MINOR_SYS_FLDVAL = 6;
  static final int MINOR_SYS_SERVICE = 7;
  static final int MINOR_SYS_PLUGIN = 8;
  static final int MINOR_SYS_FUNCGRP = 9;
  static final int MINOR_SYS_FUNC = 10;
  static final int MINOR_SYS_FACE = 11;
  static final int MINOR_SYS_ORGAN = 12;
  static final int MINOR_SYS_USER1 = 13;
  static final int MINOR_SYS_SYSUSER = 14;
  static final int MINOR_SYS_SYSROLE = 15;
  static final int MINOR_SYS_USERROLE = 16;
  static final int MINOR_SYS_USERDEP = 17;
  static final int MINOR_SYS_SYSROLEOBJ = 18;
  static final int MINOR_SYS_WMS = 31;
  static final int MINOR_SYS_WFS = 32;
  static final int MINOR_SYS_VECTOR = 33;
  static final int MINOR_SYS_VIEWPORT = 34;
  static final int MINOR_SYS_REGION = 35;
  static final int MINOR_SYS_LAYER = 36;
  static final int MINOR_SYS_MAPARA = 37;
  static final int MINOR_SYS_LOGINLOG = 38;
  static final int MINOR_SYS_OPLOG = 39;
  static final int MINOR_SYS_GROUP = 40;
  static final int MINOR_SYS_USERGROUP = 41;
  static final int MINOR_SYS_DS = 42;
  static final int MINOR_SYS_RESDIR = 43;
  static final int MINOR_SYS_RESITEM = 44;
  static final int MINOR_SYS_MEDIA = 45;
  static final int MINOR_SYS_URLMAP = 46;
}
