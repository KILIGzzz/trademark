package com.cloudwise.trademark.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * (Progress)实体类
 *
 * @author makejava
 * @since 2020-12-23 12:29:05
 */
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
    private Integer uploadId;
    /**
     * 通知文件，关联文件上传表
     */
    private String notice;
    /**
     * 业务id，关联业务表
     */
    private Integer businessId;

    private String createBy;

    private Date createTime;

    private String updateBy;

    private Date updateTime;

    private String remark;


    public Integer getProgressId() {
        return progressId;
    }

    public void setProgressId(Integer progressId) {
        this.progressId = progressId;
    }

    public String getProgressType() {
        return progressType;
    }

    public void setProgressType(String progressType) {
        this.progressType = progressType;
    }

    public Integer getUploadId() {
        return uploadId;
    }

    public void setUploadId(Integer uploadId) {
        this.uploadId = uploadId;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public Integer getBusinessId() {
        return businessId;
    }

    public void setBusinessId(Integer businessId) {
        this.businessId = businessId;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}