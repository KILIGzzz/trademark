package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Business;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

/**
 * (TblBusiness)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-22 11:12:23
 */
public interface BusinessDao {

    /**
     * 通过ID查询单条数据
     *
     * @param businessId 主键
     * @return 实例对象
     */
    Business queryById(Integer businessId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Business> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param business 实例对象
     * @return 对象列表
     */
    List<Business> queryAll(Business business);

    /**
     * 新增数据
     *
     * @param business 实例对象
     * @return 影响行数
     */
    int insert(Business business);

    /**
     * 修改数据
     *
     * @param business 实例对象
     * @return 影响行数
     */
    int update(Business business);

    /**
     * 通过主键删除数据
     *
     * @param businessId 主键
     * @return 影响行数
     */
    int deleteById(Integer businessId);


    List<Business> queryAllByConditionAndLimit(Business tb, @Param("offset") int offset, @Param("limit") int limit);
    long getCount(Business tb);
    List<Map<String,Object>> findAllDictionary();
}