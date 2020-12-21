package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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

    /**
     * @create by: IvanZ
     * @description : 查询所有，并分页，并按条件查询
     * @create time: 2020/12/17 10:09
     * @param pageBean: 
 * @param user:
     * @return ReturnBean
     */
    @GetMapping("findAll")
    public ReturnBean findAll(PageBean pageBean, User user){
        List<User> users = userService.queryAllByLimit(getOffset(pageBean), pageBean.getLimit(),user);
        long count = userService.getCount(user);
        ReturnBean returnBean = returnSuccess(users,count);
        return returnBean;
    }

    /**
     * @create by: IvanZ
     * @description : 根据选中的id删除数据
     * @create time: 2020/12/17 14:34
     * @param userIds: 
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("delSelected")
    public ReturnBean delSelected(String userIds){
        boolean delete = userService.delSelected(userIds);
        if(delete){
            return returnSuccess(null);
        }
        return returnFail(null);
    }
    
    /**
     * @create by: IvanZ
     * @description : 删除选中id的数据
     * @create time: 2020/12/17 14:38
     * @param userId: 
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("deleteById")
    public ReturnBean deleteById(Integer userId){
        boolean b = userService.deleteById(userId);
        if (b) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @create by: IvanZ
     * @description : 添加用户
     * @create time: 2020/12/17 20:10
     * @param : 
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PostMapping("insertUser")
    public ReturnBean insertUser(User user,String role){
        //根据登录名查询用户
        User userTemp = userService.queryByLoginName(user.getLoginName());
        //如果用户不为空，返回错误
        if (userTemp != null){
            return returnFail(null);
        }
        String[] roles= role.split("");
        //往user表中添加数据
        User insert = userService.insert(user);
        //如果insert不为空，说明添加成功
        if (insert!=null){
            //根据返回的用户id往tbl_user_role中添加数据
            userService.insertUserRole(insert.getUserId(), roles);
            //返回成功
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @create by: IvanZ
     * @description : 查询所有部门
     * @create time: 2020/12/17 19:54
     * @param :
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     */
    @GetMapping("findAllDept")
    public List<Map<String, Object>> findAllDept(){
        List<Map<String, Object>> allDept = userService.findAllDept();
        return allDept;
    }

    /**
     * @create by: IvanZ
     * @description : 查询所有角色
     * @create time: 2020/12/17 19:53
     * @param :
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     */
    @GetMapping("findAllRole")
    public List<Map<String, Object>> findAllRole(){
        List<Map<String, Object>> allRole = userService.findAllRole();
        return allRole;
    }

    /**
     * @create by: IvanZ
     * @description : 修改用户信息
     * @create time: 2020/1332/18 15:48
     * @param user: 
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("updateUser")
    public ReturnBean updateUser(User user,String role){
        User update = userService.update(user);
        if (update != null){
            String[] roles= role.split("");
            userService.updateUserRole(user.getUserId(),roles);
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @create by: IvanZ
     * @description : 修改密码
     * @create time: 2020/12/18 18:42
     * @param user: 
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("updatePassword")
    public ReturnBean updatePassword(User user){
        User update = userService.update(user);
        if (update != null){
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    @GetMapping("findSelectRole")
    public List<Integer> findSelectRole(int userId){
        return userService.findSelectRole(userId);
    }
}