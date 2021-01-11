package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.service.IMailService;
import com.cloudwise.trademark.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2021/1/11 16:06
 * @description 客户登录控制器
 * @modifiedBy
 */
@Controller
@RequestMapping("customLogin")
public class CustomLoginController {

    @Autowired
    private IMailService mailService;

    @GetMapping("toLogin")
    public String toLogin() {
        return "website/customLogin";
    }

    @GetMapping("sendEmail")
    public void sendEmail(String email, HttpServletRequest request) {
        String verification = MyUtil.getCharAndNum(4);
        request.getSession().setAttribute("ver", verification);
        mailService.sendSimpleMail(email, "验证码", verification);
    }

    @PostMapping("login")
    public ModelAndView login(String email, String verification, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        if (verification.equals(request.getSession().getAttribute("ver"))) {
            modelAndView.setViewName("website/personalBusiness");
        }
        return modelAndView;
    }
}
