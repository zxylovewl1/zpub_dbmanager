import 'package:zpub_bas/zpub_bas.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/FldValue.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/constant/EntityConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/constant/FldConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/constant/FldValueConstant.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/FldValuesManager.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/manager/FldValuesManagerConstant.dart';
import 'package:zpub_bas/com/zerogis/zpubbase/constant/MapKeyConstant.dart';
import 'package:zpub_sqflite/zpub_sqflite.dart';
import 'InitSvrMethod.dart';
import 'UserMethod.dart';

/*
 * 类描述：菜单相关方法
 * 作者：郑朝军 on 2019/7/22
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/7/22
 * 修改备注：
 */
class MenuMethod
{
  static MenuMethod mInstance;

  /*
   * 全部功能
   */
  List<dynamic> mFunc;

  /*
   * 功能组
   */
  List<dynamic> mFuncgrp;

  /*
   * 用户角色功能
   */
  List<dynamic> sysroleobj;

  static MenuMethod getInstance()
  {
    if (mInstance == null)
    {
      mInstance = new MenuMethod();
    }
    return mInstance;
  }

  MenuMethod()
  {
    mFunc = InitSvrMethod.getInitSvrMap()["func"];
    mFuncgrp = InitSvrMethod.getInitSvrMap()["funcgrp"];
    dynamic obj = (InitSvrMethod.getInitSvrMap()["access"])["obj"];
    FldValuesManagerConstant fldValuesManagerConstant = FldValuesManager.getInstance();
    FldValue result = fldValuesManagerConstant.queryFldValue(
        "sysroleobj", FldConstant.FLD_TYPE, FldValueConstant.SYSROLEOBJ_TYPE_DISPE_FUNC);
    sysroleobj = obj[result.getDbvalue()];
    ArrayUtil.filterMapKey(sysroleobj, "objectid");
  }

  /*
   * 查询菜单项
   * retrun [{{id: 1720, sys: 11, name: Task, namee: , namec: 流程中心, icon: icon-flow, disporder: 1, glgrp: , target: menu}:
    * [{id: 5472, sys: 11, namee: , namec: 我的待办箱, disporder: 1, grp: Task, plugin: MyTask, icon: icon-needto}}}}]
   */
  List<Map<dynamic, List<dynamic>>> queryMenu()
  {
    List<Map<dynamic, List<dynamic>>> menu = new List();
    mFuncgrp.forEach((value)
    {
      if (value["target"] == "menu")
      {
        Map<dynamic, List<dynamic>> map = {};
        List<dynamic> list = <dynamic>[];
        mFunc.forEach((funcVal)
        {
          if (funcVal["grp"] == value["name"])
          {
            sysroleobj.forEach((func)
            {
              if (func["objectid"] == funcVal["plugin"])
              {
                list.add(funcVal);
              }
            });
          }
        });

        if (!CxTextUtil.isEmptyList(list))
        {
          map[value] = list;
          menu.add(map);
        }
      }
    });
    return menu;
  }

  /*
   * 创建自定义菜单项
   */
  void createMenu()
  {
    updateProcsUserID();
    mFuncgrp.forEach((value)
    {
      if (value["target"] == "menu")
      {
        mFunc.forEach((funcVal)
        {
          if (funcVal["grp"] == value["name"])
          {
            sysroleobj.forEach((func)
            {
              if (func["objectid"] == funcVal["plugin"])
              {
                createOrUpdate(funcVal);
              }
            });
          }
        });
      }
    });
  }

  /*
   * 添加或者更新
   */
  void createOrUpdate(dynamic value)
  {
    String exp = FldConstant.FLD_NAMEC + " = '" + value[FldConstant.FLD_NAMEC] + "' and " +
        MapKeyConstant.MAP_KEY_USERID + " = " + UserMethod.getUserId();
    SQLiteDBMethod.getInstance().queryByExp(EntityConstant.ENTITY_TABATT_PROCS, exp).then((result)
    {
      if (CxTextUtil.isEmptyList(result))
      {
        String name = "INSERT INTO  procs(sys ,namee ,namec ,disporder ,grp ,prockey ,bill ,procid ,tabname ,proccls ,plugins ,title ,icon, visible, attach, hascomp, proces,userid)";
        String sql =
            name + " VALUES(11, '', '" + value[FldConstant.FLD_NAMEC] +
                "',    2, 'grp',      'bustripProcess', 'CL',  'bustripProcess:1:527605', 'hr_bustrip', 'oa.proc.ProcHrBustrip', '" +
                value[FldConstant.FLD_PLUGIN] + "',   '" +
                value[FldConstant.FLD_NAMEC] + "',    'assets/images/" + value[FldConstant.FLD_ICON] +
                ".png', 0, 0, 1, 1," + UserMethod.getUserId() + ");";
        SQLiteDBMethod.getInstance().creates(sql);
      }
    });
  }

  /*
   * 更新常用功能表的userid
   */
  void updateProcsUserID()
  {
    SQLiteDBMethod.getInstance().update(
        EntityConstant.ENTITY_TABATT_PROCS, MapKeyConstant.MAP_KEY_USERID + "=" + UserMethod.getUserId(), "grp='hr'");
  }

  /*
   * 清空本地数据
   */
  static void clear()
  {
    mInstance = null;
  }
}
