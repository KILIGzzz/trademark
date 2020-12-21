package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2020/12/14 17:42
 * @description ：通用返回实体类
 * @modified By：
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReturnBean {
    private int code;
    private String msg;
    private long count;
    private Object data;
}
