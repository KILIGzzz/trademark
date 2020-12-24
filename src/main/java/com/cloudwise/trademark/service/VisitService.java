package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Visit;

import java.util.List;

/**
 * (Visit)表服务接口
 *
 * @author makejava
 * @since 2020-12-23 20:11:29
 */
public interface VisitService {

    /**
     * 通过ID查询单条数据
     *
     * @param visitId 主键
     * @return 实例对象
     */
    Visit queryById(Integer visitId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Visit> queryAllByLimit(Visit visit,int offset, int limit);

    /**
     * 新增数据
     *
     * @param visit 实例对象
     * @return 实例对象
     */
    Visit insert(Visit visit);

    /**
     * 修改数据
     *
     * @param visit 实例对象
     * @return 实例对象
     */
    Visit update(Visit visit);

    /**
     * 通过主键删除数据
     *
     * @param visitId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer visitId);

    long getCount (Visit visit);
}