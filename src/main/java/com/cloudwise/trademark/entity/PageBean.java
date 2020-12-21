package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2020/12/14 17:48
 * @description ：
 * @modified By：
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageBean {
    int page;
    int limit;
}
