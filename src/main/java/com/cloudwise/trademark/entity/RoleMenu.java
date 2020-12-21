package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 角色和菜单关联表(TblRoleMenu)实体类
 *
 * @author makejava
 * @since 2020-12-19 20:43:57
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
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


}