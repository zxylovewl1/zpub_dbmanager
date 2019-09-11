import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/bean/Entity.dart';
import 'package:zpub_dbmanager/com/zerogis/zpubDbManager/method/InitSvrMethod.dart';

import 'EntityManagerConstant.dart';

/*
 * 类描述：整个应用程序的Entity的管理类：主要针对SysCfg做方法的封装
 * 作者：郑朝军 on 2018/8/29
 * 邮箱：1250393285@qq.com
 * 公司：武汉智博创享科技有限公司
 * 修改人：郑朝军 on 2018/8/29
 * 修改备注：
 */
class EntityManager
    implements EntityManagerConstant
{
  List<Entity> mEntity; // 整个程序的所有实体表对象(网络)

  static EntityManager mInstance;

  static EntityManager getInstance()
  {
    if (mInstance == null)
    {
      mInstance = new EntityManager();
    }

    return mInstance;
  }

  EntityManager()
  {
    this.mEntity = InitSvrMethod.getInitSvrEntity();
  }

  List<Entity> queryAllEntity()
  {
    return mEntity;
  }

  List<Entity> queryGlEntity(int glMajor, int glMinor)
  {
    List<Entity> result = <Entity>[];
    List<Entity> list = queryAllEntity();
    int glMinor_;
    int glMajor_;

    for (int i = 0, size = list.length; i < size; i++)
    {
      Entity mEntity = list[i];
      glMajor_ = mEntity.getGlmaj();
      glMinor_ = mEntity.getGlmin();
      if (glMajor_ == glMajor && glMinor_ == glMinor)
      {
        result.add(mEntity);
      }
    }

    return result;
  }

  @override
  Entity queryEntity(int major, int minor)
  {
    List<Entity> list = queryAllEntity();
    int minor_;
    int major_;

    for (int i = 0, size = list.length; i < size; i++)
    {
      Entity mEntity = list[i];
      major_ = mEntity.getMajor();
      minor_ = mEntity.getMinor();
      if (major_ == major && minor_ == minor)
      {
        return mEntity;
      }
    }

    return null;
  }

  Entity queryEntityWithTabbatt(String tabbatt)
  {
    Entity item = null;
    this.mEntity.forEach((mEntity)
    {
      if (mEntity.getTabatt() == tabbatt)
      {
        item = mEntity;
      }
    });

    return item;
  }

  @override
  List<int> queryEntityMajorMinor(String tabName)
  {
    List<int> result = <int>[];
    List<Entity> list = queryAllEntity();

    for (int i = 0, size = list.length; i < size; i++)
    {
      Entity item = list[i];
      if (item.getTabatt() == tabName)
      {
        result.add(item.getMajor());
        result.add(item.getMinor());
        return result;
      }
    }

    return result;
  }

  @override
  String queryEntityTabbatt(int major, int minor)
  {
    Entity mEntity = queryEntity(major, minor);
    return mEntity.getTabatt();
  }

  @override
  String queryEntityTabNamec(int major, int minor)
  {
    Entity mEntity = queryEntity(major, minor);
    return mEntity.getNamec();
  }

  /*
   * 清空本地数据
   */
  static void clear()
  {
    mInstance = null;
  }
}
