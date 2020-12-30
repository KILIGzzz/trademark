package com.cloudwise.trademark.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (Attendance)实体类
 *
 * @author makejava
 * @since 2020-12-29 13:58:29
 */
@Data
public class Attendance implements Serializable {
    private static final long serialVersionUID = -86996461869705449L;
    /**
     * 签到编号
     */
    private Integer attendanceId;
    /**
     * 员工编号
     */
    private Integer userId;
    /**
     * 签到时间
     */
    private String attendanceTime;

    /**
     * 签到时间
     */
    private String checkIn;

    /**
     * 签退时间
     */
    private String checkOut;

    /**
     * 员工姓名
     */
    private String loginName;
}