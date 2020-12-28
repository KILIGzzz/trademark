package com.cloudwise.trademark.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * (Custom)实体类
 *
 * @author makejava
 * @since 2020-12-22 14:54:13
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Custom implements Serializable {
    private static final long serialVersionUID = -63915791594288712L;
    @ExcelProperty("customId")
    private Integer customId;
    /**
     * 联系人姓名
     */
    @ExcelProperty("contact")
    private String contact;
    /**
     * 手机号
     */
    @ExcelProperty("phone")
    private String phone;
    /**
     * 申请人
     */
    @ExcelProperty("applicant")
    private String applicant;
    /**
     * 邮寄地址
     */
    @ExcelProperty("customAddress")
    private String customAddress;
    /**
     * 当前登录人的loginName，创建人
     */
    @ExcelProperty("createBy")
    private String createBy;
    /**
     * 创建时间
     */
    @ExcelProperty("createTime")
    private Date createTime;
    @ExcelProperty("updateBy")
    private String updateBy;
    @ExcelProperty("updateTime")
    private Date updateTime;
    /**
     * 代理人ID
     */
    @ExcelProperty("proxyId")
    private Integer proxyId;

    @ExcelProperty("remark")
    private String remark;
    /**
     * 代理人姓名
     */
    @ExcelProperty("userName")
    private String userName;


}