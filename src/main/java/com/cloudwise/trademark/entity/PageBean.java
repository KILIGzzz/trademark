package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author : Enzo
 * @version : 1.0
 * @date : Created on 2020/12/14 16:02
 * @description : page bean
 * @modifiedBy :
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PageBean {
    private int page;
    private int limit;
}
