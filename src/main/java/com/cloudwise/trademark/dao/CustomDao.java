package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Custom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Custom)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-22 14:54:14
 */
public interface CustomDao {

    /**
     * 通过ID查询单条数据
     *
     * @param customId 主键
     * @return 实例对象
     */
    Custom queryById(Integer customId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Custom> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param custom 实例对象
     * @return 对象列表
     */
    List<Custom> queryAll(Custom custom);

    /**
     * 新增数据
     *
     * @param custom 实例对象
     * @return 影响行数
     */
    int insert(Custom custom);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Custom> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Custom> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Custom> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Custom> entities);

    /**
     * 修改数据
     *
     * @param custom 实例对象
     * @return 影响行数
     */
    int update(Custom custom);

    /**
     * 通过主键删除数据
     *
     * @param customId 主键
     * @return 影响行数
     */
    int deleteById(Integer customId);

    /**
     * @create by: ydq
     * @description: 方法作用：条件查询加分页
     * @create time: 2020/12/22 15:31
     * @param:
     * @return
     */
    List<Custom> queryAllByConditionAndLimit(@Param("custom") Custom custom,@Param("offset") int offset, @Param("limit") int limit);

}