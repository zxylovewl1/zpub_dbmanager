/*
 * 类描述：
 * 作者：郑朝军 on 2019/5/10
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/5/10
 * 修改备注：
 */
import 'package:zmoa/com/zerogis/zmoa/bean/common/Syscfg.dart';

/**
 * 类描述：整个应用程序的SysCfg的管理类：主要针对SysCfg做方法的封装
 * 作者：郑朝军 on 2018/8/29
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2018/8/29
 * 修改备注：
 */
abstract class SysCfgManagerConstant
{
  /*
   * 查询所有 配置对象(Syscfg)
   *
   * @return 所有Syscfg
   * @ 异常
   */
  List<Syscfg> queryAllSyscfg();

  /*
   * 根据唯一标识（键值）查询 配置对象(Syscfg)
   *
   * @param keyno 唯一标识（键值）
   * @return 配置对象(Syscfg)
   * @ 异常
   */
  Syscfg querySysCfg(String keyno);


  /*
   * 根据唯一标识（键值）查询 配置对象(Syscfg)
   *
   * @param keyno 唯一标识（键值）
   * @return 配置对象value值
   * @ 异常
   */
  String querySysCfgValue(String keyno);
}
