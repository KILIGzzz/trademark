package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.LayUiTree;
import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.MenuService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2020/12/17 22:36
 * @description login controller
 * @modifiedBy
 */
@Controller
public class LoginController {
    @Autowired
    private MenuService menuService;


    /**
     * 页面跳转
     *
     * @createBy Enzo
     * @createTime 2020/12/29 15:01
     */
    @GetMapping("toLogin")
    public String toLogin() {
        return "manage/login";
    }

    @GetMapping("toHome")
    public String toHome() {
        return "manage/home";
    }

    /**
     * 登录，用户名及密码验证
     *
     * @param username 网页接收的账号
     * @param password 网页接收的密码
     * @return ModelAndView
     * @createBy Enzo
     * @createTime 2020/12/29 15:01
     */

    @PostMapping("login")
    public ModelAndView login(String username, String password, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        //获取shiro的连接器
        Subject subject = SecurityUtils.getSubject();
        //构建登录令牌
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            subject.login(token);
        } catch (Exception e) {
            modelAndView.addObject("message", "用户名或密码错误！");
            modelAndView.setViewName("manage/login");
            return modelAndView;
        }
        //在右上角显示用户名和照片
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        request.getSession().setAttribute("username", user.getUserName());
        request.getSession().setAttribute("userId", user.getUserId());
        request.getSession().setAttribute("user", user);
        // 在左侧显示树状的菜单导航。根据登录的用户名，查询该用户的所有菜单。
        List<LayUiTree> layUiTreeList = menuService.queryAllTreeByLoginName(username);
        modelAndView.addObject("layUiTreeList", layUiTreeList);
        //查询该用户有权限的所有菜单
        final List<Menu> menusByLoginName = menuService.findMenusByLoginName(username);
        modelAndView.addObject("menus", menusByLoginName);
        modelAndView.setViewName("manage/home");
        return modelAndView;
    }

    /**
     * 注销，跳转到登录页面
     *
     * @createBy Enzo
     * @createTime 2020/12/29 15:02
     */

    @RequestMapping("logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "manage/login";
    }
}
