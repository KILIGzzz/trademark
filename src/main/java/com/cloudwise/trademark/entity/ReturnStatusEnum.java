package com.cloudwise.trademark.entity;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2020/12/14 17:48
 * @description ：
 * @modified By：
 */
public enum ReturnStatusEnum {
    //成功信息
    SUCCESS(0,"操作成功"),
    //失败信息
    FAIL(1,"操作失败");

    int code;
    String msg;

    ReturnStatusEnum() {
    }

    ReturnStatusEnum(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
