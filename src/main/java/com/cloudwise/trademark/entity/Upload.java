package com.cloudwise.trademark.entity;

import java.io.Serializable;

/**
 * (Upload)实体类
 *
 * @author makejava
 * @since 2020-12-25 15:12:26
 */
public class Upload implements Serializable {
    private static final long serialVersionUID = 129263016129034682L;
    /**
     * 即文件ID，为方便识别命名为表名_id
     */
    private Integer uploadId;
    /**
     * 原文件名
     */
    private String sourceName;
    /**
     * 服务器文件名
     */
    private String destinationName;
    /**
     * 原通知文件名
     */
    private String noticeName;


    public Integer getUploadId() {
        return uploadId;
    }

    public void setUploadId(Integer uploadId) {
        this.uploadId = uploadId;
    }

    public String getSourceName() {
        return sourceName;
    }

    public void setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }

    public String getDestinationName() {
        return destinationName;
    }

    public void setDestinationName(String destinationName) {
        this.destinationName = destinationName;
    }

    public String getNoticeName() {
        return noticeName;
    }

    public void setNoticeName(String noticeName) {
        this.noticeName = noticeName;
    }

}