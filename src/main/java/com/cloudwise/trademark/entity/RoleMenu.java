package com.cloudwise.trademark.entity;

import java.io.Serializable;

/**
 * 角色和菜单关联表(TblRoleMenu)实体类
 *
 * @author makejava
 * @since 2020-12-19 20:43:57
 */
public class RoleMenu implements Serializable {
    private static final long serialVersionUID = 214414593692152056L;
    /**
    * 角色ID
    */
    private Integer roleId;
    /**
    * 菜单ID
    */
    private Integer menuId;


    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

}