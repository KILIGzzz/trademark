package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 角色信息表(TblRole)表服务接口
 *
 * @author makejava
 * @since 2020-12-19 18:03:32
 */
public interface RoleService {

    /**
     * 通过ID查询单条数据
     *
     * @param roleId 主键
     * @return 实例对象
     */
    Role queryById(Integer roleId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Role> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param role 实例对象
     * @return 实例对象
     */
    Role insert(Role role);

    /**
     * 修改数据
     *
     * @param role 实例对象
     * @return 实例对象
     */
    Role update(Role role);

    /**
     * 通过主键删除数据
     *
     * @param roleId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer roleId);

    /**
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/19 18:12
     * @param :
     * @return long
     */
    long getCount();

    /**
     * @create by: IvanZ
     * @description : 从user_role中删除数据
     * @create time: 2020/12/19 19:15
     * @param :
     * @return int
     */
    int deleteByRoleId(Integer roleId);

    /**
     * @create by: IvanZ
     * @description : 查询所有菜单
     * @create time: 2020/12/19 22:13
     * @param :
     * @return java.util.List<com.cloudwise.trademark.entity.Menu>
     */
    List<Menu> findAllMenu();

    /**
     * @create by: IvanZ
     * @description : 往role_munu表中添加数据
     * @create time: 2020/12/20 16:41
     * @param roleId
     * @return int
     */
    void insertRoleMenu(int roleId,String[] menusId);


    /**
     * @create by: IvanZ
     * @description : 往role_munu表修改数据
     * @create time: 2020/12/20 16:41
     * @param roleId
     * @return int
     */
    void updateRoleMenu(Integer roleId, String[] menusId);

    /**
     * @create by: IvanZ
     * @description : 查询需要选中的菜单
     * @create time: 2020/12/20 17:44
     * @param roleId:
     * @return int[]
     */
    List<Integer> findSelectMenu(int roleId);
}