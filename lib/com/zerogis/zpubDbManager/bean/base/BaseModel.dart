import 'package:zpub_third/com/zerogis/zpubthird/sqlite/bean/DBModel.dart';

/*
 * 类描述：模型基类
 * 作者：郑朝军 on 2018/5/14
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2019/4/14
 * 修改备注：
 */
abstract class BaseModel extends DBModel
{
  /*
   * 用户ID
   */
  int ret;

  /*
   * 用户ID
   */
  Object errcode;

  /*
   * 用户ID
   */
  String msg;

  /*
   * 用户ID
   */
  List reg;

  /*
   * 返回是否成功
   */
  bool isSucess;

  bool getSucess()
  {
    return ret == 0;
  }

  /*
   * 获取ID的值
   */
  int getId()
  {
    return id;
  }
}
