package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DeptService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

/**
 * 部门表(Dept)表控制层
 *
 * @author makejava
 * @since 2020-12-17 10:26:20
 */
@RestController
@RequestMapping("dept")
public class DeptController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private DeptService deptService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Dept selectOne(Integer id) {
        return this.deptService.queryById(id);
    }


    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Dept dept) {
        int offset = getOffset(pageBean);
        final List<Dept> depts = deptService.queryAllByConditionAndLimit(dept, offset, pageBean.getLimit());
        final long rowCount = deptService.getRowCount(dept);
        return returnSuccess(depts, rowCount);
    }

    @PutMapping("deleteById")
    public ReturnBean deleteById(Integer deptId) {
        final boolean delete = deptService.deleteById(deptId);
        if (delete) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    @PutMapping("deleteByIds")
    public ReturnBean deleteByIds(String ids) {
        final boolean delete = deptService.deleteByIds(ids);
        if (delete) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    @PutMapping("updateDept")
    public ReturnBean updateDept(Dept dept) {
        System.out.println(dept.toString());
        try {
            final Dept update = deptService.update(dept);
            return returnSuccess(update);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    @PostMapping("insertDept")
    public ReturnBean insertDept(Dept dept) {
        dept.setDelFlag("0");
        try {
            final Dept insertDept = deptService.insert(dept);
            return returnSuccess(insertDept);
        } catch (Exception e) {
            return returnFail(null);
        }
    }
}