package com.cloudwise.trademark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/16 15:19
 * @description 控制页面跳转
 * @modifiedBy
 */
@Controller
@RequestMapping("home")
public class HomeController {

    /**
     * home页面跳转控制
     *
     * @createBy Enzo
     * @createTime 2020/12/29 15:37
     */

    @GetMapping("toUserinfo")
    public String toUserinfo() {
        return "manage/userinfo";
    }

    @GetMapping("toIndex")
    public String toIndex() {
        return "manage/homeIndex";
    }

}