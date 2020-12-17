package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 部门表(Dept)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-17 10:26:14
 */
public interface DeptDao {

    /**
     * 通过ID查询单条数据
     *
     * @param deptId 主键
     * @return 实例对象
     */
    Dept queryById(Integer deptId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Dept> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * @return List<Dept>
     * @createBy Enzo
     * @description 按条件查询并分页
     * @createTime 2020/12/17 10:31
     */
    List<Dept> queryAllByConditionAndLimit(Dept dept, @Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param dept 实例对象
     * @return 对象列表
     */
    List<Dept> queryAll(Dept dept);

    /**
     * 新增数据
     *
     * @param dept 实例对象
     * @return 影响行数
     */
    int insert(Dept dept);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Dept> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Dept> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Dept> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Dept> entities);

    /**
     * 修改数据
     *
     * @param dept 实例对象
     * @return 影响行数
     */
    int update(Dept dept);

    /**
     * 通过主键删除数据(改变状态)
     *
     * @param deptId 主键
     * @return 影响行数
     */
    int deleteById(Integer deptId);

    /**
     * 获取数据行数
     *
     * @param dept
     * @return long getRowCount
     * @createBy Enzo
     * @createTime 2020/12/17 10:45
     */
    long getRowCount(Dept dept);

    /**
     * 根据list中的id删除dept(改变状态)
     *
     * @param deptList
     * @return int deleteByIds
     * @createBy Enzo
     * @createTime 2020/12/17 17:32
     */
    int deleteByIds(@Param("deptList") List deptList);

}