
/*
 * 类描述：整个应用程序的SysCfg的管理类：主要针对SysCfg做方法的封装
 * 作者：郑朝军 on 2018/8/29
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2018/8/29
 * 修改备注：
 */

import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Entity.dart';

abstract class EntityManagerConstant
{
  /*
   * 查询所有实体
   *
   * @return 所有实体
   * @throws Exception 异常
   */
  List<Entity> queryAllEntity();

  /*
   * 根据主子类型拿到对应的实体对象
   *
   * @param major 主类型
   * @param minor 子类型
   * @return 一个实体对象
   */
  Entity queryEntity(int major, int minor);

  /*
   * 根据表名拿到对应的实体对象
   *
   * @param tabbatt 表名
   * @return 一个实体对象
   */
  Entity queryEntityWithTabbatt(String tabbatt);

  /*
   * 根据主子类型匹配关联主子类型-拿到对应的实体对象
   *
   * @param glMajor 主类型：主表的主类型
   * @param glMinor 子类型：主表的子类型
   * @return 被主表关联的子表的一个实体(Entity)对象
   */
  List<Entity> queryGlEntity(int glMajor, int glMinor);

  /*
   * 根据表名：查询主类型和子类型
   *
   * @param tabName 表名
   * @return 集合
   */
  List<int> queryEntityMajorMinor(String tabName);

  /*
   * 根据主子类型拿到对应的表名
   *
   * @param major 主类型
   * @param minor 子类型
   * @return 表名
   */
  String queryEntityTabbatt(int major, int minor);

  /*
   * 根据主子类型拿到对应的表的中文名
   *
   * @param major 主类型
   * @param minor 子类型
   * @return 表的中文名（Namec）
   */
  String queryEntityTabNamec(int major, int minor);
}
