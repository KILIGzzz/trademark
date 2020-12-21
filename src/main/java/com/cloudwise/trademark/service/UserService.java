package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 用户信息表(TblUser)表服务接口
 *
 * @author makejava
 * @since 2020-12-17 09:28:39
 */
public interface UserService {

    /**
     * 通过id查询单条数据
     *
     * @param id
     * @return 实例对象
     */
    User queryById(int id);

    /**
     * 通过loginName查询单条数据
     *
     * @param loginName
     * @return 实例对象
     */
    User queryByLoginName(String loginName);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<User> queryAllByLimit(int offset, int limit, User user);

    /**
     * @param :
     * @return long
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/17 9:58
     */
    long getCount(User user);

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    User insert(User user);

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 实例对象
     */
    User update(User user);

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer userId);

    /**
     * @param
     * @return boolean
     * @create by: IvanZ
     * @description : 根据选中的id删除数据
     * @create time: 2020/12/17 11:24
     */
    boolean delSelected(String userIds);


    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 查询所有部门
     * @create time: 2020/12/17 17:31
     */
    List<Map<String, Object>> findAllDept();

    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 查询所有角色
     * @create time: 2020/12/17 19:41
     */
    List<Map<String, Object>> findAllRole();


    /**
     * @param userId:
     * @param roles:
     * @return int
     * @create by: IvanZ
     * @description : 往tbl_user_role中添加数据
     * @create time: 2020/12/18 11:57
     */
    void insertUserRole(@Param("userId") int userId, @Param("roles") String[] roles);

    /**
     * @param userId:
     * @param roles:
     * @return int
     * @create by: IvanZ
     * @description : 往tbl_user_role中修改数据
     * @create time: 2020/12/18 11:57
     */
    void updateUserRole(int userId, String[] roles);

    /**
     * 通过username查询单条数据
     *
     * @param username
     * @return User
     * @createBy Enzo
     * @createTime 2020/12/19 21:39
     */
    User queryByUsername(String username);

    /**
     * @create by: IvanZ
     * @description : 查询选中的roleId
     * @create time: 2020/12/21 16:20
     * @param userId:
     * @return java.util.List<java.lang.Integer>
     */
    List<Integer> findSelectRole(Integer userId);
}