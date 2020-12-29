package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * (Upload)实体类
 *
 * @author makejava
 * @since 2020-12-25 15:12:26
 */
@Data
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

}