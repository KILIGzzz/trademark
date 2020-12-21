package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.dao.UserDao;
import com.cloudwise.trademark.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 用户信息表(TblUser)表服务实现类
 *
 * @author makejava
 * @since 2020-12-17 09:28:40
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public User queryById(int id) {
        return userDao.queryById(id);
    }

    /**
     * 通过loginName查询单条数据
     *
     * @param loginName
     * @return 实例对象
     */
    @Override
    public User queryByLoginName(String loginName) {
        return this.userDao.queryByLoginName(loginName);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<User> queryAllByLimit(int offset, int limit,User user) {
        return this.userDao.queryAllByLimit(offset,limit,user);
    }

    /**
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/17 9:58
     * @param :
     * @return long
     */
    @Override
    public long getCount(User user) {
        return userDao.getCount(user);
    }

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User insert(User user) {
        this.userDao.insert(user);
        return user;
    }

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    @Override
    public User update(User user) {
        this.userDao.update(user);
        return this.queryById(user.getUserId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer userId) {
        return this.userDao.deleteById(userId) > 0;
    }

    @Override
    public boolean delSelected(String userIds) {
        if (userIds != null && userIds.length() > 0) {
            String[] strings = userIds.split(",");
            List<String> idList = Arrays.asList(strings);
            int i = userDao.delSelected(idList);
            if (i > 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Map<String,Object>> findAllDept() {
        return userDao.findAllDept();
    }

    @Override
    public List<Map<String, Object>> findAllRole() {
        return userDao.findAllRole();
    }

    @Override
    public void insertUserRole(int userId, String[] roles) {
        for (int i = 0; i < roles.length; i++) {
            userDao.insertUserRole(userId,roles[i]);
        }
    }

    @Override
    public void updateUserRole(int userId, String[] roles) {
        userDao.deleteUserRole(userId);
        for (int i = 0; i < roles.length; i++) {
            userDao.insertUserRole(userId,roles[i]);
        }
    }

    /**
     * 通过username查询单条数据
     *
     * @param username
     * @return User
     * @createBy Enzo
     * @createTime 2020/12/19 21:39
     */
    @Override
    public User queryByUsername(String username) {
        return userDao.queryByUsername(username);
    }

    @Override
    public List<Integer> findSelectRole(Integer userId) {
        return userDao.findSelectRole(userId);
    }
}