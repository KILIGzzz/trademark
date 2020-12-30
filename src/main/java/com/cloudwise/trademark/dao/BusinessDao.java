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
     * @param businessId
     * @return
     * @create by: Back
     * @description: 根据ID查询进度类型
     * @create time: 2020/12/24 11:25
     */
    String findTypeById(Integer businessId);


    /**
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 业务量走势图
     * @create time: 2020/12/25 20:36
     */
    List<Map<String, Object>> showBusinessChart();

    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 业绩排行榜
     * @create time: 2020/12/25 21:31
     */
    List<Map<String, Object>> showPerformanceRanking();

    /**
     * @param : today
     * @return int
     * @create by: IvanZ
     * @description : 获取当天业务数量
     * @create time: 2020/12/28 20:23
     */
    Integer getBusinessCount(String today);

    /**
     * @param : today
     * @return int
     * @create by: IvanZ
     * @description : 获取当天回访数量
     * @create time: 2020/12/28 20:23
     */
    Integer getVisitCount(String today);

    /**
     * @param : today
     * @return int
     * @create by: IvanZ
     * @description : 获取当天收入
     * @create time: 2020/12/28 20:23
     */
    Integer getMoney(String today);

    /**
     * @return
     * @create by: Back
     * @description:进度图表
     * @create time: 2020/12/30 9:49
     */
    List<Map<String, Object>> progressEchartName(@Param("startTime") String startTime, @Param("endTime") String endTime, @Param("progressType") String progressType);

    /**
     * @return
     * @create by: Back
     * @description:进度图表
     * @create time: 2020/12/30 9:49
     */
    List<Map<String, Object>> progressEchartTime(@Param("loginName") String loginName, @Param("progressType") String progressType);

    /**
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 获取回访图数据根据代理人
     * @create time: 2020/12/30 9:31
     */
    List<Map<String, Object>> showVisitEchartName(@Param("startTime") String startTime, @Param("endTime") String endTime);

    /**
     * @param :
     * @return java.util.List<java.util.Map < java.lang.String, java.lang.Object>>
     * @create by: IvanZ
     * @description : 获取回访图数据根据时间
     * @create time: 2020/12/30 10:09
     */
    List<Map<String, Object>> showVisitEchartTime(String loginName);

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：获取业务类型总数量
     * @create time: 2020/12/30 19:44
     * @param:
     */
    List<Map<String, Object>> businessEchart();

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：业务分析按代理人
     * @create time: 2020/12/30 20:02
     * @param:
     */
    List<Map<String, Object>> showAgentChart(@Param("startTime") String startTime, @Param("endTime") String endTime);

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：业务分析按时间
     * @create time: 2020/12/30 20:44
     * @param:
     */
    List<Map<String, Object>> showBusinessChartByAgent(String loginName);
}