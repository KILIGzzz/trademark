package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Dictionary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Dictionary)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-23 19:28:21
 */
public interface DictionaryDao {

    /**
     * 通过ID查询单条数据
     *
     * @param dictionaryId 主键
     * @return 实例对象
     */
    Dictionary queryById(Integer dictionaryId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Dictionary> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param dictionary 实例对象
     * @return 对象列表
     */
    List<Dictionary> queryAll(Dictionary dictionary);

    /**
     * 新增数据
     *
     * @param dictionary 实例对象
     * @return 影响行数
     */
    int insert(Dictionary dictionary);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Dictionary> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Dictionary> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Dictionary> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Dictionary> entities);

    /**
     * 修改数据
     *
     * @param dictionary 实例对象
     * @return 影响行数
     */
    int update(Dictionary dictionary);

    /**
     * 通过主键删除数据
     *
     * @param dictionaryId 主键
     * @return 影响行数
     */
    int deleteById(Integer dictionaryId);

    /**
     * @return List<Dictionary>
     * @createBy Enzo
     * @description 按条件查询并分页
     * @createTime 2020/12/17 10:31
     */
    List<Dictionary> queryAllByConditionAndLimit(Dictionary dictionary, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 获取数据行数
     *
     * @param dictionary
     * @return long getRowCount
     * @createBy Enzo
     * @createTime 2020/12/17 10:45
     */
    long getRowCount(Dictionary dictionary);


}