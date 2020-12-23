package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Business;

import java.util.List;
import java.util.Map;

/**
 * (TblBusiness)表服务接口
 *
 * @author makejava
 * @since 2020-12-22 11:12:23
 */
public interface BusinessService {

    /**
     * 通过ID查询单条数据
     *
     * @param businessId 主键
     * @return 实例对象
     */
    Business queryById(Integer businessId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Business> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param business 实例对象
     * @return 实例对象
     */
    Business insert(Business business);

    /**
     * 修改数据
     *
     * @param business 实例对象
     * @return 实例对象
     */
    Business update(Business business);

    /**
     * 通过主键删除数据
     *
     * @param businessId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer businessId);

    List<Business> queryAllByConditionAndLimit(Business tb, int offset, int limit);
    long getCount(Business tb);
    List<Map<String,Object>> findAllDictionary();

}