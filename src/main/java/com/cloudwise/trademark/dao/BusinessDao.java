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
     * @param limit  查询条数
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

    /**
     * @param tb offset   limit
     * @return
     * @create by: Back
     * @description: 包含分页和条件的查询，无参数传入则为查询全部
     * @create time: 2020/12/24 9:32
     */
    List<Business> queryAllByConditionAndLimit(Business tb, @Param("offset") int offset, @Param("limit") int limit);

    /**
     * @param tb
     * @return
     * @create by: Back
     * @description: 根据传入实体类计算所查询出的数据条数
     * @create time: 2020/12/24 9:34
     */
    long getCount(Business tb);

    /**
     * @return
     * @create by: Back
     * @description: 查询字典表，并返回对应List
     * @create time: 2020/12/24 9:35
     */
    List<Map<String, Object>> findAllDictionary();
    /**
     * @create by: Back
     * @description: 根据ID查询进度类型
     * @create time: 2020/12/24 11:25
     * @param businessId
     * @return
     */
    String findTypeById(Integer businessId);


    /**
     * @create by: IvanZ
     * @description : 业务量走势图
     * @create time: 2020/12/25 20:36
     * @param :
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    List<Map<String,Object>> showBusinessChart();

    /**
     * @create by: IvanZ
     * @description : 业绩排行榜
     * @create time: 2020/12/25 21:31
     * @param :
     * @return java.util.List<java.util.Map<java.lang.String,java.lang.Object>>
     */
    List<Map<String,Object>> showPerformanceRanking();

    /**
     * @create by: IvanZ
     * @description : 获取当天业务数量
     * @create time: 2020/12/28 20:23
     * @param : today
     * @return int
     */
    int getBusinessCount(String today);

    /**
     * @create by: IvanZ
     * @description : 获取当天回访数量
     * @create time: 2020/12/28 20:23
     * @param : today
     * @return int
     */
    int getVisitCount(String today);

    /**
     * @create by: IvanZ
     * @description : 获取当天收入
     * @create time: 2020/12/28 20:23
     * @param : today
     * @return int
     */
    int getMoney(String today);
}