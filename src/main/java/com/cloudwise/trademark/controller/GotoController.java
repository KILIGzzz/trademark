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
@RequestMapping("goto")
public class GotoController {

    @GetMapping("toShow")
    public String toShow() {
        return "home";
    }
}
