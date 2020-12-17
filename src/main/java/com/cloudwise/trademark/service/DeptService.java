package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Dept;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 部门表(Dept)表服务接口
 *
 * @author makejava
 * @since 2020-12-17 10:26:16
 */
public interface DeptService {

    /**
     * 通过ID查询单条数据
     *
     * @param deptId 主键
     * @return 实例对象
     */
    Dept queryById(Integer deptId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Dept> queryAllByLimit(int offset, int limit);

    /**
     * 根据条件查询并分页
     *
     * @param dept,offset,limit
     * @return List<Dept>
     * @createBy Enzo
     * @createTime 2020/12/17 11:02
     */
    List<Dept> queryAllByConditionAndLimit(Dept dept, int offset, int limit);

    /**
     * 新增数据
     *
     * @param dept 实例对象
     * @return 实例对象
     */
    Dept insert(Dept dept);

    /**
     * 修改数据
     *
     * @param dept 实例对象
     * @return 实例对象
     */
    Dept update(Dept dept);

    /**
     * 通过主键删除数据
     *
     * @param deptId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer deptId);

    /**
     * 获取数据行数
     *
     * @param dept
     * @return 数据行数
     * @createBy Enzo
     * @createTime 2020/12/17 10:55
     */
    long getRowCount(Dept dept);

    /**
     * 根据list中的id删除dept(改变状态)
     *
     * @param ids
     * @return 是否成功
     * @createBy Enzo
     * @createTime 2020/12/17 17:32
     */
    boolean deleteByIds(String ids);

}