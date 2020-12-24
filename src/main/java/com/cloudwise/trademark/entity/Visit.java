package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (Visit)实体类
 *
 * @author makejava
 * @since 2020-12-23 20:11:28
 */
@Data
public class Visit implements Serializable {
    private static final long serialVersionUID = -76681840972050455L;

    private Integer visitId;
    /**
     * 回访内容
     */
    private String visitContent;
    /**
     * 关联客户表
     */
    private Integer customId;

    private String createBy;

    private Date createTime;

    private String updateBy;

    private Date updateTime;

    private String remark;


}