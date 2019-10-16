import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Fld.dart';

/*
 * 类描述：整个应用程序的fld的管理类：主要针对fld做方法的封装
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
abstract class FldManagerConstant
{
  /*
   * 查询fld表中符合表名的记录
   *
   * @param tabName 表名
   * @return 符合表名的集合
   */
  List<Fld> queryFldList(String tabName);

  /*
   * 查询fld表中符合表名的记录并且根据disporder排序好
   *
   * @param tabName 表名
   * @return 符合表名的集合
   */
  List<Fld> queryFldListSortDisporder(String tabName);

  /*
   * 查询fld表中符合表名的记录并且根据disporder排序好,并且深度拷贝
   *
   * @param tabName 表名
   * @return 符合表名的集合
   */
  List<Fld> queryFldDispDep(String tabName);

  /*
   * 查询fld表中符合表名的记录
   *
   * @param tabName 表名
   * @param result 返回的集合
   * @return 符合表名的集合
   */
  void queryFldListWith(String tabName, List<Fld> result);

  /*
   * 查询fld表中符合表名的记录
   *
   * @param tabName 表名
   * @return 符合表名的集合
   */
  List<String> queryFldColNameList(String tabName);

  /*
   * 查询fld表中符合表名的记录并且IsMcard等于1的所有fld集合
   *
   * @param tabName 表名
   * @return 符合表名的集合
   */
  List<Fld> queryIsMcardFldList(String tabName);
}
