package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Business;
import org.apache.ibatis.annotations.Param;

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
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 业务量走势图
     * @create time: 2020/12/25 20:41
     */
    Map<String, Object> showBusinessChart();

    /**
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 业绩排行榜
     * @create time: 2020/12/25 21:32
     */
    Map<String, Object> showPerformanceRanking();

    /**
     * @param :
     * @return java.util.List<java.lang.Integer>
     * @create by: IvanZ
     * @description : 获取首页数据
     * @create time: 2020/12/28 20:21
     */
    List<Integer> getIndexData();

    /**
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 获取回访图数据根据代理人
     * @create time: 2020/12/30 9:32
     */
    Map<String, Object> showVisitEchartName(String startTime, String endTime);

    /**
     * @param :
     * @return java.util.Map<java.lang.String, java.lang.Object>
     * @create by: IvanZ
     * @description : 获取回访图数据根据时间
     * @create time: 2020/12/30 10:09
     */
    Map<String, Object> showVisitEchartTime(String loginName);


    /**
     * @return
     * @create by: Back
     * @description:进度图表
     * @create time: 2020/12/30 9:49
     */
    Map<String, Object> progressEchartName(String startTime, String endTime, String progressType);


    /**
     * @return
     * @create by: Back
     * @description:进度图表
     * @create time: 2020/12/30 9:49
     */
    Map<String, Object> progressEchartTime(String loginName, String progressType);

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：获取业务类型总数量
     * @create time: 2020/12/30 19:47
     * @param:
     */
    List<Long> businessEchart();

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：业务分析按代理人
     * @create time: 2020/12/30 20:12
     * @param:
     */
    Map<String, Object> showAgentChart(String startTime, String endTime);

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：业务分析按时间
     * @create time: 2020/12/30 20:51
     * @param:
     */
    Map<String, Object> showBusinessChartByAgent(String loginName);

}