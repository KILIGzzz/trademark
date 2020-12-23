package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Dictionary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Dictionary)表服务接口
 *
 * @author makejava
 * @since 2020-12-23 19:28:22
 */
public interface DictionaryService {

    /**
     * 通过ID查询单条数据
     *
     * @param dictionaryId 主键
     * @return 实例对象
     */
    Dictionary queryById(Integer dictionaryId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Dictionary> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param dictionary 实例对象
     * @return 实例对象
     */
    Dictionary insert(Dictionary dictionary);

    /**
     * 修改数据
     *
     * @param dictionary 实例对象
     * @return 实例对象
     */
    Dictionary update(Dictionary dictionary);

    /**
     * 通过主键删除数据
     *
     * @param dictionaryId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer dictionaryId);

    /**
     * @return List<Dictionary>
     * @createBy Enzo
     * @description 按条件查询并分页
     * @createTime 2020/12/17 10:31
     */
    List<Dictionary> queryAllByConditionAndLimit(Dictionary dictionary, int offset, int limit);

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