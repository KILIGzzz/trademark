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
     * @param limit  查询条数
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

    /**
     * @param tb offset   limit
     * @return
     * @create by: Back
     * @description: 包含分页和条件的查询，无参数传入则为查询全部
     * @create time: 2020/12/24 9:32
     */

    List<Business> queryAllByConditionAndLimit(Business tb, int offset, int limit);

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
     * @create by: IvanZ
     * @description : 业务量走势图
     * @create time: 2020/12/25 20:41
     * @param : 
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    Map<String,Object> showBusinessChart();
    
    /**
     * @create by: IvanZ
     * @description : 业绩排行榜
     * @create time: 2020/12/25 21:32
     * @param : 
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    Map<String,Object> showPerformanceRanking();

    /**
     * @create by: IvanZ
     * @description : 获取首页数据
     * @create time: 2020/12/28 20:21
     * @param :
     * @return java.util.List<java.lang.Integer>
     */
    List<Integer> getIndexData();
}