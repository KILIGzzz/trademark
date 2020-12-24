package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.Visit;
import com.cloudwise.trademark.service.VisitService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * (Visit)表控制层
 *
 * @author makejava
 * @since 2020-12-23 20:11:29
 */
@RestController
@RequestMapping("visit")
public class VisitController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private VisitService visitService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Visit selectOne(Integer id) {
        return this.visitService.queryById(id);
    }

    /**
     * @create by: ydq
     * @description: 方法作用：查询所有
     * @create time: 2020/12/23 20:16
     * @param:
     * @return
     */
    @GetMapping("selectAll")
    public ReturnBean selectAll (PageBean pageBean){
        try {
            int offset = getOffset(pageBean);
            List<Visit> visits = visitService.queryAllByLimit(offset, pageBean.getLimit());
            return returnSuccess(visits,visitService.getCount());
        }catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @create by: ydq
     * @description: 方法作用：修改
     * @create time: 2020/12/24 0:16
     * @param:
     * @return
     */
    @GetMapping("update")
    public ReturnBean update (Visit visit){
        try {
            visit.setUpdateTime(new Date());
            Visit update = visitService.update(visit);
            return returnSuccess(update);
        }catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @create by: ydq
     * @description: 方法作用：添加
     * @create time: 2020/12/24 0:21
     * @param:
     * @return
     */
    @GetMapping("add")
    public ReturnBean add (Visit visit){
        try {
            visit.setCreateTime(new Date());
            Visit insert = visitService.insert(visit);
            return returnSuccess(insert);
        }catch (Exception e) {
            return returnFail(null);
        }
    }

}