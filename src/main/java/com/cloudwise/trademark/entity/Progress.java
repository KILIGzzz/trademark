package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (Progress)实体类
 *
 * @author makejava
 * @since 2020-12-23 12:29:05
 */
@Data
public class Progress implements Serializable {
    private static final long serialVersionUID = -98237681343849720L;

    private Integer progressId;
    /**
     * 进度类型下拉字典
     */
    private String progressType;
    /**
     * 上传文件，关联文件上传表
     */
    private Integer upload;
    /**
     * 通知文件，关联文件上传表
     */
    private Integer notice;
    /**
     * 业务id，关联业务表
     */
    private Integer businessId;

    private String createBy;

    private Date createTime;

    private String updateBy;

    private Date updateTime;

    private String remark;

    /**
     * 原文件名
     */
    private String sourceName;
    /**
     * 服务器文件名
     */
    private String destinationName;

}