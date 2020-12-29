package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Dictionary;
import com.cloudwise.trademark.entity.DictionaryType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (DictionaryType)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-23 19:29:02
 */
public interface DictionaryTypeDao {

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    DictionaryType queryById(Integer typeId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<DictionaryType> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param dictionaryType 实例对象
     * @return 对象列表
     */
    List<DictionaryType> queryAll(DictionaryType dictionaryType);

    /**
     * 新增数据
     *
     * @param dictionaryType 实例对象
     * @return 影响行数
     */
    int insert(DictionaryType dictionaryType);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<DictionaryType> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<DictionaryType> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<DictionaryType> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<DictionaryType> entities);

    /**
     * 修改数据
     *
     * @param dictionaryType 实例对象
     * @return 影响行数
     */
    int update(DictionaryType dictionaryType);

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 影响行数
     */
    int deleteById(Integer typeId);

    /**
     * @return List<DictionaryType>
     * @createBy Enzo
     * @description 按条件查询并分页
     * @createTime 2020/12/17 10:31
     */
    List<DictionaryType> queryAllByConditionAndLimit(DictionaryType dictionaryType, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * 获取数据行数
     *
     * @param dictionaryType
     * @return long getRowCount
     * @createBy Enzo
     * @createTime 2020/12/17 10:45
     */
    long getRowCount(DictionaryType dictionaryType);

    /**
     * 获取所有字典类型
     *
     * @return  List<DictionaryType>
     * @createBy Enzo
     * @createTime 2020/12/29 11:50
     */
    List<DictionaryType> queryAllType();
}