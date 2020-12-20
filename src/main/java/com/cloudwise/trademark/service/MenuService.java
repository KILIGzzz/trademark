package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.LayUiTree;
import com.cloudwise.trademark.entity.Menu;

import java.util.List;

/**
 * 菜单权限表(Menu)表服务接口
 *
 * @author makejava
 * @since 2020-12-17 10:27:55
 */
public interface MenuService {

    /**
     * 通过ID查询单条数据
     *
     * @param menuId 主键
     * @return 实例对象
     */
    Menu queryById(Integer menuId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Menu> queryAllByLimit(int offset, int limit);

    /**
     * 查询所有菜单
     *
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/20 21:18
     */
    List<Menu> queryAllMenu();

    /**
     * 新增数据
     *
     * @param menu 实例对象
     * @return 实例对象
     */
    Menu insert(Menu menu);

    /**
     * 修改数据
     *
     * @param menu 实例对象
     * @return 实例对象
     */
    Menu update(Menu menu);

    /**
     * 通过主键删除数据
     *
     * @param menuId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer menuId);

    /**
     * 根据用户名查询该用户有权限的菜单
     *
     * @param loginName
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/19 11:46
     */
    List<Menu> queryAllByLoginName(String loginName);

    /**
     * 查询树状菜单
     *
     * @param loginName
     * @return List<LayUiTree>
     * @createBy Enzo
     * @createTime 2020/12/19 11:47
     */
    List<LayUiTree> queryAllTreeByLoginName(String loginName);

    /**
     * 修改菜单属性为不可见
     *
     * @param menuId 主键
     * @return 影响行数
     * @createBy Enzo
     * @createTime 2020/12/20 22:50
     */
    int deleteMenuById(Integer menuId);

    /**
     * 根据id查找父亲的id和名字
     *
     * @param menuId 主键
     * @return Menu findParentNameId
     * @createBy Enzo
     * @createTime 2020/12/20 23:58
     */
    Menu findParentNameId(Integer menuId);
}