package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.UserService;
import com.cloudwise.trademark.shiro.ShiroUtil;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * 用户信息表(TblUser)表控制层
 *
 * @author makejava
 * @since 2020-12-17 09:28:48
 */
@RestController
@RequestMapping("user")
public class UserController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private UserService userService;

    @GetMapping("toUser")
    public ModelAndView toUser() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user");
        return modelAndView;
    }

    /**
     * @param pageBean:
     * @param user:
     * @return ReturnBean
     * @create by: IvanZ
     * @description : 查询所有，并分页，并按条件查询
     * @create time: 2020/12/17 10:09
     */
    @GetMapping("findAll")
    public ReturnBean findAll(PageBean pageBean, User user) {
        List<User> users = userService.queryAllByLimit(getOffset(pageBean), pageBean.getLimit(), user);
        long count = userService.getCount(user);
        ReturnBean returnBean = returnSuccess(users, count);
        return returnBean;
    }

    /**
     * @param userIds:
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 根据选中的id删除数据
     * @create time: 2020/12/17 14:34
     */
    @PutMapping("delSelected")
    public ReturnBean delSelected(String userIds) {
        boolean delete = userService.delSelected(userIds);
        if (delete) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param userId:
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 删除选中id的数据
     * @create time: 2020/12/17 14:38
     */
    @PutMapping("deleteById")
    public ReturnBean deleteById(Integer userId) {
        boolean b = userService.deleteById(userId);
        if (b) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 添加用户
     * @create time: 2020/12/17 20:10
     */
    @PostMapping("insertUser")
    public ReturnBean insertUser(User user, String role) {
        //根据登录名查询用户(用户名不能重复)
        User userTemp = userService.queryByLoginName(user.getLoginName());
        //如果用户不为空，返回错误
        if (userTemp != null) {
            return returnFail(null);
        }
        String[] roles = role.split(",");
        //加密之前的密码
        String password = user.getPassword();
        //随机一个盐值,传入数据库
        String salt = String.valueOf(UUID.randomUUID());
        user.setSalt(salt);
        //shiro加密
        ShiroUtil shiroUtil = new ShiroUtil();
        //生成密文传入数据库
        String cipher = shiroUtil.encryptionBySalt(salt, password);
        user.setPassword(cipher);
        //往user表中添加数据
        User insert = userService.insert(user);
        //如果insert不为空，说明添加成功
        if (insert != null) {
            //根据返回的用户id往tbl_user_role中添加数据
            userService.insertUserRole(insert.getUserId(), roles);
            //返回成功
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 查询所有部门
     * @create time: 2020/12/17 19:54
     */
    @GetMapping("findAllDept")
    public List<Map<String, Object>> findAllDept() {
        List<Map<String, Object>> allDept = userService.findAllDept();
        return allDept;
    }

    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 查询所有角色
     * @create time: 2020/12/17 19:53
     */
    @GetMapping("findAllRole")
    public List<Map<String, Object>> findAllRole() {
        List<Map<String, Object>> allRole = userService.findAllRole();
        return allRole;
    }

    /**
     * @param user:
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 修改用户信息
     * @create time: 2020/1332/18 15:48
     */
    @PutMapping("updateUser")
    public ReturnBean updateUser(User user, String role) {
        User update = userService.update(user);
        if (update != null) {
            userService.updateUserRole(user.getUserId(), role);
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param user:
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 修改密码
     * @create time: 2020/12/18 18:42
     */
    @PutMapping("updatePassword")
    public ReturnBean updatePassword(User user) {
        //加密之前的密码
        String password = user.getPassword();
        //随机一个盐值,传入数据库
        String salt = String.valueOf(UUID.randomUUID());
        user.setSalt(salt);
        //shiro加密
        ShiroUtil shiroUtil = new ShiroUtil();
        //生成密文传入数据库
        String cipher = shiroUtil.encryptionBySalt(salt, password);
        user.setPassword(cipher);
        User update = userService.update(user);
        if (update != null) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    @GetMapping("findSelectRole")
    public List<Integer> findSelectRole(int userId) {
        return userService.findSelectRole(userId);
    }

    /**
     * 更新用户基本信息
     *
     * @param user
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/23 17:44
     */
    @PutMapping("/updateUserInfo")
    public ReturnBean updateUserInfo(User user) {
        try {
            userService.update(user);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }

    }

    @GetMapping("/checkLoginName")
    public String checkLoginName(String loginName) {
        //根据登录名查询用户(用户名不能重复)
        User userTemp = userService.queryByLoginName(loginName);
        //如果用户不为空，返回错误
        if (userTemp != null) {
            return "false";
        }
        return "true";
    }
}