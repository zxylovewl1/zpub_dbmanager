import 'dart:convert';

import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Entity.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Fld.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/FldValue.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/InitSvr.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Plugin.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Syscfg.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Widgets.dart';
import 'package:zpub_third_shard/zpub_third_shard.dart';

/*
 * 类描述：程序初始化相关方法封装
 * 作者：郑朝军 on 2019/5/6
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/6
 * 修改备注：
 */
class InitSvrMethod
{
  static Map<String, dynamic> mInitSvrMap;

  static InitSvr mInitSvr;

  /*
   * 设置初始化<br/>
   */
  static void setInitSvr(InitSvr svr)
  {
    InitSvrMethod.mInitSvr = svr;
    SPUtil.put(SPUtil.MEMBER_SVR, json.encode(svr));
  }

  /*
   * 设置初始化<br/>
   */
  static void setInitSvrMap(Map<String, dynamic> svrMap)
  {
    InitSvrMethod.mInitSvrMap = svrMap;
    SPUtil.put(SPUtil.MEMBER_SVR_MAP, json.encode(svrMap));
  }

  /*
   * 获取当前初始化数据<br/>
   */
  static InitSvr getInitSvr()
  {
    if (mInitSvr == null)
    {
      String svr_json = SPUtil.get(SPUtil.MEMBER_SVR, "{}");
      if (svr_json != null)
      {
        mInitSvr = InitSvr.fromJson(json.decode(svr_json));
      }
    }
    return mInitSvr;
  }

  /*
   * 获取当前初始化数据<br/>
   */
  static Map<String, dynamic> getInitSvrMap()
  {
    if (mInitSvrMap == null)
    {
      String svr_json = SPUtil.get(SPUtil.MEMBER_SVR_MAP, "{}");
      if (svr_json != null)
      {
        mInitSvrMap = json.decode(svr_json);
      }
    }
    return mInitSvrMap;
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<Syscfg> getInitSvrSyscfg()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getSyscfg();
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<Entity> getInitSvrEntity()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getEntity();
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<Fld> getInitSvrFld()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getFld();
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<FldValue> getInitSvrFldValue()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getFldvalue();
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<Plugin> getInitSvrPlugins()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getPlugin();
  }

  /*
   * 获取当前初始化用户数据<br/>
   */
  static List<Widgets> getInitSvrWidgets()
  {
    if (mInitSvr == null)
    {
      mInitSvr = getInitSvr();
    }
    return mInitSvr.getWidgets();
  }
}
