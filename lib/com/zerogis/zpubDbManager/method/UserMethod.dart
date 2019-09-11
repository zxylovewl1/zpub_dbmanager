import 'dart:convert';

import 'package:zpub_bas/zpub_bas.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/InitSvrUserOrgans.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/User.dart';
import 'package:zpub_third/zpub_third.dart';
import 'package:zpub_third_shard/zpub_third_shard.dart';

/*
 * 功能：User单例操作封装
 * 需要传入的键：
 * 传入的值类型：
 * 传入的值含义：
 * 是否必传 ：
 * 作者：郑朝军 on 2019/4/7 23:23
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 */
class UserMethod
{
  /*
   * 单例mUser
   */
  static User mUser;

  /*
   * 缓存token到属性文件中并更新BaseConstant中的内存token<br/>
   */
  static void setToken(String token)
  {
    SPUtil.put(SPUtil.MEMBER_TOKEN, token);
  }

  /*
   * 从属性文件中获取token<br/>
   */
  static String getTokenFromProperty()
  {
    Object token = SPUtil.get(SPUtil.MEMBER_TOKEN, "");
    if (token == null || CxTextUtil.isEmpty(token.toString()))
    {
      return null;
    }
    else
    {
      return token.toString();
    }
  }

  /*
   * 设置当前用户<br/>
   */
  static void setUser(User user)
  {
    UserMethod.mUser = user;
    setUserOrgan(user);
    SPUtil.put(SPUtil.MEMBER_INFO, json.encode(user));
  }

  /*
   * 获取当前用户<br/>
   * 如果页面内点击清除缓存则需要在此处处理null问题<br/>
   * 兼容强制登录与按需登录<br/>
   */
  static User getUser()
  {
    if (mUser == null)
    {
      String user_json = SPUtil.get(SPUtil.MEMBER_INFO, "{}");
      if (user_json != null)
      {
        mUser = User.fromJson(json.decode(user_json));
      }
    }
    return mUser;
  }

  /*
   * 获取当前用户<br/>
   * 如果页面内点击清除缓存则需要在此处处理null问题<br/>
   * 兼容强制登录与按需登录<br/>
   */
  static Map<String, dynamic> getUserMap()
  {
    if (mUser == null)
    {
      String user_json = SPUtil.get(SPUtil.MEMBER_INFO, "{}");
      if (user_json != null)
      {
        mUser = User.fromJson(json.decode(user_json));
      }
    }
    return mUser.toJson();
  }

  /*
   * 设置用户部门信息<br/>
   */
  static void setUserOrgan(User user)
  {
    if (CxTextUtil.isEmptyObject(user))
    {
      return;
    }
    List<InitSvrUserOrgans> list = user.getOrgans();
    if (!CxTextUtil.isEmptyList(list))
    {
      InitSvrUserOrgans organs = list[0];
      user.setPosition(organs.getPosition());
      user.setDepart(organs.getNamec());
    }
  }

  /*
   * 获取当前用户id<br/>
   */
  static String getUserId()
  {
    return getUser().getId().toString();
  }

  /*
   * 获取当前用户no<br/>
   */
  static String getUserNo()
  {
    return getUser().getNo();
  }
}
