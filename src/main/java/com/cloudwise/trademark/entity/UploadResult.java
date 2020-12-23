package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/23 16:04
 * @description 上传响应结果实体类
 * @modifiedBy
 */
@Data
public class UploadResult implements Serializable {
    /**
     * 文件唯一标识
     */
    private String uid;
    /**
     * 文件名
     */
    private String name;
    /**
     * 状态有：uploading done error removed
     */
    private String status;
    /**
     * 服务端响应内容
     */
    private String response;
}
