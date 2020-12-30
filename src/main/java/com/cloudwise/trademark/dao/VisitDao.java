package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Visit;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Visit)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-23 20:11:29
 */
public interface VisitDao {

    /**
     * 通过ID查询单条数据
     *
     * @param visitId 主键
     * @return 实例对象
     */
    Visit queryById(Integer visitId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Visit> queryAllByLimit(@Param("visit") Visit visit, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * @param visit:
     * @return long
     * @create by: IvanZ
     * @description : 得到行数
     * @create time: 2020/12/24 10:14
     */
    long getCount(Visit visit);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param visit 实例对象
     * @return 对象列表
     */
    List<Visit> queryAll(Visit visit);

    /**
     * 新增数据
     *
     * @param visit 实例对象
     * @return 影响行数
     */
    int insert(Visit visit);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Visit> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Visit> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Visit> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Visit> entities);

    /**
     * 修改数据
     *
     * @param visit 实例对象
     * @return 影响行数
     */
    int update(Visit visit);

    /**
     * 通过主键删除数据
     *
     * @param visitId 主键
     * @return 影响行数
     */
    int deleteById(Integer visitId);

}