import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Fld.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/method/InitSvrMethod.dart';
import 'package:zpub_bas/com/zerogis/zpubbase/constant/DigitValueConstant.dart';

import 'FldManagerConstant.dart';

/*
 * 类描述：整个应用程序的fld的管理类：主要针对fld做方法的封装
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
class FldManager
    implements FldManagerConstant
{
  static FldManager mInstance;

  List<Fld> _mFld; // 整个程序的所有fld对象

  static FldManager getInstance()
  {
    if (mInstance == null)
    {
      mInstance = new FldManager();
    }

    return mInstance;
  }

  FldManager()
  {
    this._mFld = InitSvrMethod.getInitSvrFld();
  }

  List<Fld> queryFldList(String tabName)
  {
    List<Fld> result = <Fld>[];
    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName)
      {
        result.add(fld);
      }
    });

    return result;
  }

  List<Fld> queryFldListSortDisporder(String tabName)
  {
    List<Fld> result = <Fld>[];

    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName)
      {
        result.add(fld);
      }
    });

    result.sort((Fld a, Fld b)
    {
      return a.getDisporder().compareTo(b.getDisporder());
    });

    return result;
  }

  List<Fld> queryFldDispDep(String tabName)
  {
    List<Fld> result = [];

    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName)
      {
        result.add(Fld.fromJson(fld.toJson()));
      }
    });

    result.sort((Fld a, Fld b)
    {
      return a.getDisporder().compareTo(b.getDisporder());
    });

    return result;
  }


  void queryFldListWith(String tabName, List<Fld> result)
  {
    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName)
      {
        result.add(fld);
      }
    });
  }

  List<String> queryFldColNameList(String tabName)
  {
    List<String> result = <String>[];
    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName)
      {
        result.add(fld.getColname());
      }
    });
    return result;
  }

  List<Fld> queryIsMcardFldList(String tabName)
  {
    List<Fld> result = <Fld>[];
    _mFld.forEach((fld)
    {
      if (fld.getTabname() == tabName && fld.getIsmcard() == DigitValueConstant.APP_DIGIT_VALUE_1)
      {
        result.add(fld);
      }
    });
    return result;
  }

  /*
   * 清空本地数据
   */
  static void clear()
  {
    mInstance = null;
  }
}
