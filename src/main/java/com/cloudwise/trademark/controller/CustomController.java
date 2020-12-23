package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.CustomService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * (Custom)表控制层
 *
 * @author makejava
 * @since 2020-12-22 14:54:14
 */
@RestController
@RequestMapping("custom")
public class CustomController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private CustomService customService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Custom selectOne(Integer id) {
        return this.customService.queryById(id);
    }
    
    /**
     * @create by: ydq
     * @description: 方法作用：查询所有并分页
     * @create time: 2020/12/22 15:07
     * @param: pageBean分页参数
     * @param: custom条件查询的属性
     * @return ReturnBean结果集
     */
    @GetMapping("selectAll")
    public ReturnBean selectAll (PageBean pageBean, Custom custom){
        //计算分页参数
        int offset = getOffset(pageBean);
        List<Custom> customList = customService.queryAllByConditionAndLimit(custom,offset, pageBean.getLimit());
        //返回json结果
        ReturnBean returnBean = returnSuccess(customList,customService.getCount(custom));
        return returnBean;
    }

    /**
     * @create by: ydq
     * @description: 方法作用：添加客户
     * @create time: 2020/12/23 10:58
     * @param:
     * @return
     */
    @PostMapping("add")
    public  ReturnBean add(Custom custom) {
        try {
            custom.setCreateTime(new Date());
            Custom insert = customService.insert(custom);
            return returnSuccess(insert);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @create by: ydq
     * @description: 方法作用：修改
     * @create time: 2020/12/23 12:13
     * @param:
     * @return
     */
    @PutMapping("update")
    public ReturnBean update(Custom custom) {
        try {
            custom.setUpdateTime(new Date());
            Custom update = customService.update(custom);
            return returnSuccess(update);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

}