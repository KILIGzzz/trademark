package com.cloudwise.trademark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2021/1/11 15:46
 * @description ：主页控制器
 * @modified By：
 */
@Controller
public class IndexController {

    @RequestMapping("toCustomIndex")
    public String toCustomIndex() {
        return "index";
    }

    @RequestMapping("toCustomLogin")
    public String toCustomLogin() {
        return "website/customLogin";
    }

    @RequestMapping("toPersonalBusiness")
    public String toPersonalBusiness() {
        return "personalBusiness";
    }
}
