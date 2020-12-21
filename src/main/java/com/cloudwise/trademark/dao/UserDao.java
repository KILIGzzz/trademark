package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.User;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

/**
 * 用户信息表(TblUser)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-17 09:28:39
 */
public interface UserDao {

    /**
     * 通过loginName查询单条数据
     *
     * @param loginName
     * @return 实例对象
     */
    User queryByLoginName(String loginName);

    /**
     * 通过id查询单条数据
     *
     * @param id
     * @return 实例对象
     */
    User queryById(int id);


    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<User> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit,User user);


    /**
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/17 9:58
     * @param :
     * @return long
     */
    long getCount(User user);

    /**
     * @create by: IvanZ
     * @description : 根据选中的id删除数据
     * @create time: 2020/12/17 11:20
     * @param list:
     * @return int
     */
    int delSelected(List<String> list);

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
     * 通过实体作为筛选条件查询
     *
     * @param user 实例对象
     * @return 对象列表
     */
    List<User> queryAll(User user);

    /**
     * 新增数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int insert(User user);

    /**
     * @create by: IvanZ
     * @description : 修改tbl_user_role的数据
     * @create time: 2020/12/18 11:57
     * @param userId:
     * @param roleId:
     * @return int
     */
    int insertUserRole(@Param("userId") int userId, @Param("roleId") String roleId);
    void deleteUserRole(int userId);

    /**
     * 修改数据
     *
     * @param user 实例对象
     * @return 影响行数
     */
    int update(User user);

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 影响行数
     */
    int deleteById(Integer userId);
}