package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (Dictionary)实体类
 *
 * @author makejava
 * @since 2020-12-23 19:28:20
 */
@Data
public class Dictionary implements Serializable {
    private static final long serialVersionUID = -69799875676975182L;

    private Integer dictionaryId;
    /**
     * 字典类型,关联字典类型表
     */
    private Integer typeId;
    /**
     * 字典名,展示时使用，保存的时候使用主键值
     */
    private String dictionaryName;
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