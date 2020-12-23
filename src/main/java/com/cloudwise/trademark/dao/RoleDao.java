package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 角色信息表(TblRole)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-19 18:03:32
 */
public interface RoleDao {

    /**
     * 通过ID查询单条数据
     *
     * @param roleId 主键
     * @return 实例对象
     */
    Role queryById(Integer roleId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Role> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param role 实例对象
     * @return 对象列表
     */
    List<Role> queryAll(Role role);

    /**
     * 新增数据
     *
     * @param role 实例对象
     * @return 影响行数
     */
    int insert(Role role);

    /**
     * 修改数据
     *
     * @param role 实例对象
     * @return 影响行数
     */
    int update(Role role);

    /**
     * 通过主键删除数据
     *
     * @param roleId 主键
     * @return 影响行数
     */
    int deleteById(Integer roleId);

    /**
     * @param :
     * @return long
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/19 18:44
     */
    long getCount();

    /**
     * @param :
     * @return int
     * @create by: IvanZ
     * @description : 从user_role中删除数据
     * @create time: 2020/12/19 19:15
     */
    int deleteByRoleId(Integer roleId);


    /**
     * @param :
     * @return java.util.List<com.cloudwise.trademark.entity.Menu>
     * @create by: IvanZ
     * @description : 查询所有菜单
     * @create time: 2020/12/19 22:14
     */
    List<Menu> findAllMenu();

    /**
     * @param roleId
     * @param menuId
     * @return int
     * @create by: IvanZ
     * @description : 往role_munu表中添加数据
     * @create time: 2020/12/20 16:41
     */
    int insertRoleMenu(@Param("roleId") int roleId, @Param("menuId") String menuId);

    /**
     * @param roleId
     * @return int
     * @create by: IvanZ
     * @description : 往role_munu表中根据roleId删除数据
     * @create time: 2020/12/20 16:41
     */
    int deleteRoleMenu(int roleId);

    /**
     * @param roleId:
     * @return int[]
     * @create by: IvanZ
     * @description : 查询需要选中的菜单
     * @create time: 2020/12/20 17:44
     */
    List<Integer> findSelectMenu(int roleId);
}