package com.cloudwise.trademark.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (TblBusiness)实体类
 *
 * @author makejava
 * @since 2020-12-22 11:12:23
 */


@Data
public class Business implements Serializable {
    private static final long serialVersionUID = 117181820727750514L;
    /**
    * 主键
    */
    private Integer businessId;
    /**
    * 申请号（专利局反馈）
    */
    private Integer applicantCode;
    /**
    * 页面显示系统时间
    */
    private Object applicantTime;
    /**
    * 字典下拉

    */
    private String businessTopType;
    /**
    * 业务名称，手输
    */
    private String businessName;
    /**
    * 字典下拉
    */
    private String trademarkType;
    /**
    * 字典下拉

    */
    private String businessSecondType;
    /**
    * 成交价格
    */
    private String price;
    /**
    * 代理费
    */
    private String proxyMoney;
    /**
    * 关联文件上传表，即文件ID
    */
    private Integer uploadId;
    
    private String createBy;
    
    private Date createTime;
    
    private String updateBy;
    
    private Date updateTime;

    private Integer customId;
    
    private String remark;

}