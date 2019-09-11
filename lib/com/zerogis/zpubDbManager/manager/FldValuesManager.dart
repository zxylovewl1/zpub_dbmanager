import 'package:zpub_bas/com/zerogis/zpubbase/constant/MapKeyConstant.dart';
import 'package:zpub_bas/zpub_bas.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/FldValue.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/method/InitSvrMethod.dart';

import 'FldValuesManagerConstant.dart';

/*
 * 类描述：整个应用程序的fldvalue的管理类：主要针对fldvalue做方法的封装
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
class FldValuesManager implements FldValuesManagerConstant
{
  static FldValuesManager mInstance;

  List<FldValue> _mFldValues; // 整个程序的所有syscfg对象

  static FldValuesManager getInstance()
  {
    if (mInstance == null)
    {
      mInstance = new FldValuesManager();
    }

    return mInstance;
  }

  FldValuesManager()
  {
    this._mFldValues = InitSvrMethod.getInitSvrFldValue();
  }

  dynamic queryFldValue(String tabName, String colname, String dispe)
  {
    dynamic fldvalue;
    Iterator<FldValue> iterator = _mFldValues.iterator;
    while (iterator.moveNext())
    {
      if (iterator.current.getTabname() == tabName &&
          iterator.current.getColname() == colname &&
          iterator.current.getDispe() == dispe)
      {
        fldvalue = iterator.current;
        break;
      }
    }
    return fldvalue;
  }

  void queryCurrFldValList(List<FldValue> listFldVal, String tabName)
  {
    _mFldValues.forEach((fldValue)
    {
      String sysTabName = fldValue.getTabname();
      if (!CxTextUtil.isEmpty(sysTabName) && sysTabName == tabName)
      {
        listFldVal.add(fldValue);
      }
    });
  }

  List<Map<String, Object>> queryFldValueMap(String tabName, String colname)
  {
    List<Map<String, Object>> list = new List();
    _mFldValues.forEach((fldValue)
    {
      if (fldValue.getTabname() == tabName && fldValue.getColname() == colname)
      {
        Map<String, Object> map = {};
        map[MapKeyConstant.MAP_KEY_FLDVALUE] = fldValue;
        map[MapKeyConstant.MAP_KEY_DBVALUE] = fldValue.getDbvalue();
        map[MapKeyConstant.MAP_KEY_DISPE] = fldValue.getDispe();
        list.add(map);
      }
    });
    return list;
  }

  List<FldValue> queryFldValueList(String tabName, String colname)
  {
    List<FldValue> list = <FldValue>[];
    _mFldValues.forEach((fldValue)
    {
      if (fldValue.getTabname() == tabName && fldValue.getColname() == colname)
      {
        list.add(fldValue);
      }
    });
    return list;
  }

  dynamic queryFldValueDispc(String tabName, String colname, String dbValue)
  {
    dynamic dispc;
    Iterator<FldValue> iterator = _mFldValues.iterator;
    while (iterator.moveNext())
    {
      if (iterator.current.getTabname() == tabName &&
          iterator.current.getColname() == colname &&
          iterator.current.getDbvalue() == dbValue)
      {
        dispc = iterator.current.getDispc();
        break;
      }
    }
    return dispc;
  }

  String queryFldValueDispc2(String colname, String dbValue)
  {
    String dispc = "";
    _mFldValues.forEach((fldValue)
    {
      if (fldValue.getColname() == colname &&
          fldValue.getDbvalue() == dbValue)
      {
        dispc = fldValue.getDispc();
        return dispc;
      }
    });
    return dispc;
  }

  List<FldValue> queryFldValueListCol(String colname)
  {
    List<FldValue> list = <FldValue>[];
    _mFldValues.forEach((fldValue)
    {
      if (fldValue.getColname() == colname)
      {
        list.add(fldValue);
      }
    });
    return list;
  }

  List<FldValue> queryFldValueListTabName(String tabName)
  {
    List<FldValue> list = <FldValue>[];
    _mFldValues.forEach((fldValue)
    {
      if (fldValue.getTabname() == tabName)
      {
        list.add(fldValue);
      }
    });
    return list;
  }

  List<String> queryFldValueDispcGetSpinnerDataSort(String tabName,
      String colname)
  {
    List resultList = [];
    List<FldValue> list = queryFldValueList(tabName, colname);
    list.sort((FldValue a, FldValue b)
    {
      return int.parse(a.getDbvalue()) - int.parse(b.getDbvalue());
    });
    list.forEach((fldValue)
    {
      resultList.add(fldValue.getDispc());
    });
    return resultList;
  }

  List<FldValue> queryFldValueGetSpinnerDataSort(String tabName, String colname)
  {
    List<FldValue> list = queryFldValueList(tabName, colname);
    list.sort((FldValue a, FldValue b)
    {
      return a.getDisporder() - b.getDisporder();
    });
    return list;
  }

  List<String> queryFldValueDispcList(String tabName, String colname)
  {
    List resultList = [];
    List<FldValue> list = queryFldValueList(tabName, colname);
    list.forEach((fldValue)
    {
      resultList.add(fldValue.getDispc());
    });
    return resultList;
  }

  List<String> queryFldValueGetSpinnerData(String colname)
  {
    List resultList = [];
    List<FldValue> list = queryFldValueListCol(colname);
    list.forEach((fldValue)
    {
      resultList.add(fldValue.getDispc());
    });
    return resultList;
  }

  /*
   * 清空本地数据
   */
  static void clear()
  {
    mInstance = null;
  }
}
