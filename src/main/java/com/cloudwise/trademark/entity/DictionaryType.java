package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (DictionaryType)实体类
 *
 * @author makejava
 * @since 2020-12-23 19:29:02
 */
@Data
public class DictionaryType implements Serializable {
    private static final long serialVersionUID = -27656105086828592L;
    /**
     * 类型ID，自增
     */
    private Integer typeId;
    /**
     * 类型名称，非空，唯一
     */
    private String typeName;
    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 修改人
     */
    private String updateBy;
    /**
     * 修改时间
     */
    private Date updateTime;
    /**
     * 备注
     */
    private String remark;

}