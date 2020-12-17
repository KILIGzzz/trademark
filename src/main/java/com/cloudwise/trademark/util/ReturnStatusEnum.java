package com.cloudwise.trademark.util;

/**
 * @author Enzo
 */

public enum ReturnStatusEnum {
    SUCCESS(0, "操作成功"),
    FAIL(1, "操作失败");

    private int code;
    private String message;

    ReturnStatusEnum() {
    }

    ReturnStatusEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
