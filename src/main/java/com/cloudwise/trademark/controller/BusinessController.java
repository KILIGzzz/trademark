package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.Business;
import com.cloudwise.trademark.service.BusinessService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * (TblBusiness)表控制层
 *
 * @author makejava
 * @since 2020-12-22 11:12:23
 */
@RestController
@RequestMapping("business")
public class BusinessController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private BusinessService BusinessService;

    @GetMapping("toBusiness")
    public ModelAndView toBusiness() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("business");
        return modelAndView;
    }

    /**
     * 通过主键查询单条数据
     *
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public ReturnBean selectOne(Integer businessId) {
        Business business = this.BusinessService.queryById(businessId);
        List<Business> list = new ArrayList<>();
        list.add(business);
        return returnSuccess(list);
    }


    /**
     * @param pageBean,tb
     * @return
     * @create by: Back
     * @description: 条件查询
     * @create time: 2020/12/24 9:40
     */

    @GetMapping("queryByCondition")
    public ReturnBean queryByCondition(PageBean pageBean, Business tb) {
        //计算分页参数
        int offset = getOffset(pageBean);
        List<Business> tbList = BusinessService.queryAllByConditionAndLimit(tb, offset, pageBean.getLimit());
        long count = BusinessService.getCount(tb);
        //返回json结果
        ReturnBean returnBean = returnSuccess(tbList);
        returnBean.setCount(count);
        return returnBean;
    }

    /**
     * @param tb
     * @return
     * @create by: Back
     * @description: 添加业务
     * @create time: 2020/12/24 9:40
     */

    @PostMapping("add")
    public ReturnBean addBusiness(Business tb) {
        try {
            tb.setCreateTime(new Date());
            Business emp1 = BusinessService.insert(tb);
            return returnSuccess(emp1);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @param tb
     * @return
     * @create by: Back
     * @description: 编辑业务
     * @create time: 2020/12/24 9:41
     */

    @PostMapping("edit")
    public ReturnBean editBusiness(Business tb) {
        try {
            tb.setUpdateTime(new Date());
            Business blist1 = BusinessService.update(tb);
            return returnSuccess(blist1);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @return
     * @create by: Back
     * @description: 查询字典，填充下拉列表
     * @create time: 2020/12/24 9:41
     */

    @GetMapping("findAllDictionary")
    public List<Map<String, Object>> findAllDictionary() {
        List<Map<String, Object>> allDictionary = BusinessService.findAllDictionary();
        return allDictionary;
    }

    /**
     * @param mv:
     * @return org.springframework.web.servlet.ModelAndView
     * @create by: IvanZ
     * @description : 显示客户信息和业务信息
     * @create time: 2020/12/23 15:56
     */
    @GetMapping("showCustomAndBusiness")
    public ModelAndView showCustomAndBusiness(int customId, ModelAndView mv) {
        mv.addObject("customId", customId);
        mv.setViewName("business");
        return mv;
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 业务量走势图
     * @create time: 2020/12/25 20:36
     */
    @GetMapping("showBusinessChart")
    public ReturnBean showBusinessChart() {
        Map<String, Object> map = BusinessService.showBusinessChart();
        return returnSuccess(map);
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 业绩排行榜
     * @create time: 2020/12/25 20:36
     */
    @GetMapping("showPerformanceRanking")
    public ReturnBean showPerformanceRanking() {
        Map<String, Object> map = BusinessService.showPerformanceRanking();
        return returnSuccess(map);
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 得到首页数据
     * @create time: 2020/12/28 20:06
     */
    @GetMapping("getIndexData")
    public ReturnBean getIndexData() {
        List<Integer> indexData = BusinessService.getIndexData();
        return returnSuccess(indexData);
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 业务分析
     * @create time: 2020/12/29 11:57
     */
    @GetMapping("businessEchart")
    public ReturnBean businessEchart() {
        return null;
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 进度分析
     * @create time: 2020/12/29 11:57
     */
    @GetMapping("progressEchart")
    public ReturnBean progressEchart() {
        return null;
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 回访分析根据代理人
     * @create time: 2020/12/29 11:57
     */
    @GetMapping("visitEchartName")
    public ReturnBean visitEchartName(String startTime,String endTime) {
        if (startTime == null || "".equals(startTime)){
            startTime = "2000-01-01";
        }
        if (endTime == null || "".equals(endTime)){
            endTime = "2100-01-01";
        }
        Map<String, Object> map = BusinessService.showVisitEchartName(startTime,endTime);
        return returnSuccess(map);
    }

    /**
     * @create by: IvanZ
     * @description : 回访分析根据时间
     * @create time: 2020/12/30 10:04
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @GetMapping("visitEchartTime")
    public ReturnBean visitEchartTime(String loginName) {
        if (loginName == null || "".equals(loginName)){
            loginName = "admin";
        }
        Map<String, Object> map = BusinessService.showVisitEchartTime(loginName);
        return returnSuccess(map);
    }

}