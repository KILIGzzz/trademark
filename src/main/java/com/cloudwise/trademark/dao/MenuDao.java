package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 菜单权限表(Menu)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-17 10:27:53
 */
public interface MenuDao {

    /**
     * 通过ID查询单条数据
     *
     * @param menuId 主键
     * @return 实例对象
     */
    Menu queryById(Integer menuId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Menu> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 查询所有菜单
     *
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/20 21:18
     */
    List<Menu> queryAllMenu();


    /**
     * 通过实体作为筛选条件查询
     *
     * @param menu 实例对象
     * @return 对象列表
     */
    List<Menu> queryAll(Menu menu);

    /**
     * 新增数据
     *
     * @param menu 实例对象
     * @return 影响行数
     */
    int insert(Menu menu);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Menu> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Menu> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Menu> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Menu> entities);

    /**
     * 修改数据
     *
     * @param menu 实例对象
     * @return 影响行数
     */
    int update(Menu menu);

    /**
     * 通过主键删除数据
     *
     * @param menuId 主键
     * @return 影响行数
     */
    int deleteById(Integer menuId);

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
     * 根据登录名查询该用户有权限的菜单
     *
     * @param loginName 用户名
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/19 11:05
     */
    List<Menu> findMenusByLoginName(@Param("loginName") String loginName);

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