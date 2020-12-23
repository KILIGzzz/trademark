package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.Business;
import com.cloudwise.trademark.service.BusinessService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
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

    /**
     * 通过主键查询单条数据
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public ReturnBean selectOne(Integer businessId) {
        Business business = this.BusinessService.queryById(businessId);
        List<Business> list = new ArrayList<>();
        list.add(business);
        return returnSuccess(list);
    }



    @GetMapping("queryByCondition")
    public ReturnBean queryByCondition(PageBean pageBean, Business tb) {
        //计算分页参数
        int offset = getOffset(pageBean);
        List<Business> tbList = BusinessService.queryAllByConditionAndLimit(tb,offset, pageBean.getLimit());
        long count = BusinessService.getCount(tb);
        //返回json结果
        ReturnBean returnBean = returnSuccess(tbList);
        returnBean.setCount(count);
        return returnBean;
    }
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
    @GetMapping("findAllDictionary")
    public List<Map<String, Object>> findAllDictionary() {
        List<Map<String, Object>> allDictionary = BusinessService.findAllDictionary();
        return allDictionary;
    }

    /**
     * @create by: IvanZ
     * @description : 显示客户信息和业务信息
     * @create time: 2020/12/23 15:56
     * @param mv:
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("showCustomAndBusiness")
    public ModelAndView showCustomAndBusiness(int customId,ModelAndView mv){
        mv.addObject("customId",customId);
        mv.setViewName("business");
        return mv;
    }

}