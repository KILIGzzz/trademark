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
     * @param limit 查询条数
     * @return 对象列表
     */
    List<User> queryAllByLimit(int offset, int limit,User user);

    /**
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/17 9:58
     * @param :
     * @return long
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
     * @create by: IvanZ
     * @description : 根据选中的id删除数据
     * @create time: 2020/12/17 11:24
     * @param
     * @return boolean
     */
    boolean delSelected(String userIds);


    /**
     * @create by: IvanZ
     * @description : 查询所有部门
     * @create time: 2020/12/17 17:31
     * @param :
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     */
    List<Map<String,Object>> findAllDept();

    /**
     * @create by: IvanZ
     * @description : 查询所有角色
     * @create time: 2020/12/17 19:41
     * @param :
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     */
    List<Map<String,Object>> findAllRole();


    /**
     * @create by: IvanZ
     * @description : 往tbl_user_role中添加数据
     * @create time: 2020/12/18 11:57
     * @param userId:
     * @param roles:
     * @return int
     */
    void insertUserRole(@Param("userId") int userId, @Param("roles") String[] roles);

    /**
     * @create by: IvanZ
     * @description : 往tbl_user_role中修改数据
     * @create time: 2020/12/18 11:57
     * @param userId:
     * @param roles:
     * @return int
     */
    void updateUserRole(int userId, String[] roles);
}