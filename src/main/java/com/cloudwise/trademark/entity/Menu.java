package com.cloudwise.trademark.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.io.Serializable;
import java.util.List;

/**
 * 菜单权限表(TblMenu)实体类
 *
 * @author makejava
 * @since 2020-12-19 20:54:49
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Menu implements Serializable {
    private static final long serialVersionUID = 105955093734118480L;
    /**
    * 菜单ID
    */
    private Integer menuId;
    /**
    * 菜单名称
    */
    private String menuName;
    /**
    * 父菜单ID
    */
    private Integer parentId;
    /**
    * 显示顺序
    */
    private Integer orderNum;
    /**
    * 请求地址
    */
    private String url;
    /**
    * 菜单类型（M目录 C菜单 F按钮）
    */
    private String menuType;
    /**
    * 菜单状态（0显示 1隐藏）
    */
    private String visible;
    /**
    * 权限标识
    */
    private String perms;
    /**
    * 菜单图标
    */
    private String icon;
    /**
    * 创建者
    */
    private String createBy;
    /**
    * 创建时间
    */
    private Date createTime;
    /**
    * 更新者
    */
    private String updateBy;
    /**
    * 更新时间
    */
    private Date updateTime;
    /**
    * 备注
    */
    private String remark;

}