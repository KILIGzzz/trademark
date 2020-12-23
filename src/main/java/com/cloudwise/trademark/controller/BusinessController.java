package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.Business;
import com.cloudwise.trademark.service.BusinessService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

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
      * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Business selectOne(Integer id) {
        return this.BusinessService.queryById(id);
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
    @RequestMapping("add")
    public ReturnBean addBusiness(Business tb) {
        try {
            int applicantCode = (int) (Math.random() * 100000000+100000000);
            tb.setApplicantCode(applicantCode);
            tb.setCreateTime(new Date());
            System.out.println(tb);
            Business emp1 = BusinessService.insert(tb);
            return returnSuccess(emp1);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    @RequestMapping("edit")
    public ReturnBean editBusiness(Business tb) {
        try {
            Business blist1 = BusinessService.update(tb);
            blist1.setUpdateTime(new Date());
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

}