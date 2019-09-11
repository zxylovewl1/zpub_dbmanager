
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Syscfg.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/method/InitSvrMethod.dart';

import 'SysCfgManagerConstant.dart';

/**
 * 类描述：整个应用程序的SysCfg的管理类：主要针对SysCfg做方法的封装
 * 作者：郑朝军 on 2018/8/29
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2018/8/29
 * 修改备注：
 */
class SysCfgManager implements SysCfgManagerConstant 
{
  static SysCfgManager mInstance;

  List<Syscfg> _mSysCfg; // 整个程序的所有syscfg对象

  static SysCfgManager getInstance() 
  {
    if (mInstance == null) 
    {
      mInstance = new SysCfgManager();
    }
    return mInstance;
  }

  SysCfgManager()
  {
    this._mSysCfg = InitSvrMethod.getInitSvrSyscfg();
  }

  List<Syscfg> queryAllSyscfg()
  {
    return _mSysCfg;
  }

  @override
  Syscfg querySysCfg(String keyno)
  {
    List<Syscfg> syscfgList = queryAllSyscfg();
    for (int i = 0, size = syscfgList.length; i < size; i++)
    {
      Syscfg syscfg = syscfgList[i];
      if (syscfg.getKeyno() == keyno)
      {
        return syscfg;
      }
    }
    return null;
  }

  @override
  String querySysCfgValue(String keyno)
  {
    List<Syscfg> syscfgList = queryAllSyscfg();
    for (int i = 0, size = syscfgList.length; i < size; i++)
    {
      Syscfg syscfg = syscfgList[i];
      if (syscfg.getKeyno() == keyno)
      {
        return syscfg.getValue();
      }
    }
    return null;
  }
}
