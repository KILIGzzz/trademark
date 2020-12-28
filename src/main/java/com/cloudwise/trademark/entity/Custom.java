package com.cloudwise.trademark.entity;

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

    private Integer customId;
    /**
     * 联系人姓名
     */
    private String contact;
    /**
     * 手机号
     */
    private String phone;
    /**
     * 申请人
     */
    private String applicant;
    /**
     * 邮寄地址
     */
    private String customAddress;
    /**
     * 当前登录人的loginName，创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private Date createTime;

    private String updateBy;

    private Date updateTime;
    /**
     * 代理人ID
     */
    private Integer proxyId;


    private String remark;
    /**
     * 代理人姓名
     */
    private String userName;


}