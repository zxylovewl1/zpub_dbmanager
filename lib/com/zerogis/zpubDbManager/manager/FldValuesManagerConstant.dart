import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/FldValue.dart';

/*
 * 类描述：整个应用程序的fldvalue的管理类：主要针对fldvalue做方法的封装
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
abstract class FldValuesManagerConstant
{
  /*
   * 根据：表名，表名，列名,dispe（tabName,colname,dispe）查询FldValue对象
   *
   * @param tabName      FldValue表中 tabName 值
   * @param colname      FldValue表中 colname 值
   * @param dispe        dispe值
   * @return FldValue 对象
   */
  dynamic queryFldValue(String tabName, String colname, String dispe);

  /*
   * 根据：表名，查询FldValue集合
   *
   * @param listFldVal    自定义的FldVal集合：需要应用层再上门new
   * @param tabName       表名
   */
  void queryCurrFldValList(List<FldValue> listFldVal, String tabName);

  /*
   * 根据：表名，列名（tabName,colname）查询FldValue集合
   *
   * @param tabName      FldValue表中 tabName 值
   * @param colname      FldValue表中 colname 值
   * @return List<Map<String, Object>> 对象
   */
  List<Map<String, Object>> queryFldValueMap(String tabName, String colname);

  /*
   * 根据：表名，列名（tabName,colname）查询FldValue集合
   *
   * @param tabName      FldValue表中 tabName 值
   * @param colname      FldValue表中 colname 值
   * @return 符合表名和列名的集合
   */
  List<FldValue> queryFldValueList(String tabName, String colname);

  /*
   * 根据：表名，列名，dbvalue值(tabName,colname,dbValue) 获取dispec的值
   *
   * @param tabName      表名
   * @param colname      列名
   * @param dbValue      dbValue值
   * @return dispec字符串
   */
  dynamic queryFldValueDispc(String tabName, String colname, String dbValue);

  /*
   * 根据：列名，dbvalue值(colname,dbValue) 获取dispec的值
   *
   * @param colname      列名
   * @param dbValue      dbValue值
   * @return dispec字符串
   */
  String queryFldValueDispc2(String colname, String dbValue);

  /*
   * 根据列(colname)的名称,查询FldValue集合
   *
   * @param colname 列的名称(colname)
   * @return 返回FldValue集合
   */
  List<FldValue> queryFldValueListCol(String colname);

  /*
   * 根据表的名称，查询FldValue集合
   *
   * @param tabName 表的名称
   * @return 返回FldValue集合
   */
  List<FldValue> queryFldValueListTabName(String tabName);

  /*
   * 根据：表名和列名(tabName，colname) 查询到fldvalue集合(根据DbValue进行排好序的fldvalue集合)然后从中获取dispec集合
   *
   * @param tabName 表名
   * @param colname 列
   * @return dispec 集合
   */
  List<String> queryFldValueDispcGetSpinnerDataSort(String tabName, String colname);

  /*
   * 根据：表名和列名(tabName，colname) 查询到fldvalue集合(根据DbValue进行排好序的fldvalue集合)
   *
   * @param tabName 表名
   * @param colname 列
   * @return fldvalue集合
   */
  List<FldValue> queryFldValueGetSpinnerDataSort(String tabName, String colname);

  /*
   * 根据：表名和列名(tabName，colname) 查询到fldvalue集合(fldvalue集合未排序)然后从中获取dispec集合
   *
   * @param tabName 表名
   * @param colname 列
   * @return dispec集合
   */
  List<String> queryFldValueDispcList(String tabName, String colname);

  /*
   * 根据列名（colname）查询到fldvalue集合然后从中获取dispec集合
   *
   * @param colname 列的名称
   * @return 返回dispec集合
   */
  List<String> queryFldValueGetSpinnerData(String colname);
}
