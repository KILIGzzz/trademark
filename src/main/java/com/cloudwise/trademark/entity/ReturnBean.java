package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author : Enzo
 * @version : 1.0
 * @date : Created on 2020/12/11 16:26
 * @description :
 * @modifiedBy :
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
