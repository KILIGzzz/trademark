package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.DictionaryType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (DictionaryType)表服务接口
 *
 * @author makejava
 * @since 2020-12-23 19:29:03
 */
public interface DictionaryTypeService {

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    DictionaryType queryById(Integer typeId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<DictionaryType> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param dictionaryType 实例对象
     * @return 实例对象
     */
    DictionaryType insert(DictionaryType dictionaryType);

    /**
     * 修改数据
     *
     * @param dictionaryType 实例对象
     * @return 实例对象
     */
    DictionaryType update(DictionaryType dictionaryType);

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer typeId);

    /**
     * @return List<DictionaryType>
     * @createBy Enzo
     * @description 按条件查询并分页
     * @createTime 2020/12/17 10:31
     */
    List<DictionaryType> queryAllByConditionAndLimit(DictionaryType dictionaryType, int offset, int limit);

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
     * @return List<DictionaryType>
     * @createBy Enzo
     * @createTime 2020/12/29 11:50
     */
    List<DictionaryType> queryAllType();
}