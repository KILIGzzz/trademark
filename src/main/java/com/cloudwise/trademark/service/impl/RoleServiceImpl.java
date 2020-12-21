package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.Role;
import com.cloudwise.trademark.dao.RoleDao;
import com.cloudwise.trademark.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 角色信息表(TblRole)表服务实现类
 *
 * @author makejava
 * @since 2020-12-19 18:03:32
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {
    @Resource
    private RoleDao roleDao;

    /**
     * 通过ID查询单条数据
     *
     * @param roleId 主键
     * @return 实例对象
     */
    @Override
    public Role queryById(Integer roleId) {
        return this.roleDao.queryById(roleId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Role> queryAllByLimit(int offset, int limit) {
        return this.roleDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param role 实例对象
     * @return 实例对象
     */
    @Override
    public Role insert(Role role) {
        this.roleDao.insert(role);
        return role;
    }

    /**
     * 修改数据
     *
     * @param role 实例对象
     * @return 实例对象
     */
    @Override
    public Role update(Role role) {
        this.roleDao.update(role);
        return this.queryById(role.getRoleId());
    }

    /**
     * 通过主键删除数据
     *
     * @param roleId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer roleId) {
        return this.roleDao.deleteById(roleId) > 0;
    }

    @Override
    public long getCount() {
        return roleDao.getCount();
    }

    @Override
    public int deleteByRoleId(Integer roleId) {
        return roleDao.deleteByRoleId(roleId);
    }

    @Override
    public List<Menu> findAllMenu() {
        return roleDao.findAllMenu();
    }

    @Override
    public void insertRoleMenu(int roleId, String[] menusId) {
        for (int i = 0; i < menusId.length; i++) {
            roleDao.insertRoleMenu(roleId,menusId[i]);
        }
    }

    @Override
    public void updateRoleMenu(Integer roleId, String[] menusId) {
        roleDao.deleteRoleMenu(roleId);
        for (int i = 0; i < menusId.length; i++) {
            roleDao.insertRoleMenu(roleId,menusId[i]);
        }
    }

    @Override
    public List<Integer> findSelectMenu(int roleId) {
        return roleDao.findSelectMenu(roleId);
    }
}