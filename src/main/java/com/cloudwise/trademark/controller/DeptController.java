package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DeptService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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

    /**
     * @param pageBean dept
     * @return
     * @create by: Back
     * @description: 查询全部
     * @create time: 2020/12/24 9:53
     */

    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Dept dept) {
        int offset = getOffset(pageBean);
        final List<Dept> depts = deptService.queryAllByConditionAndLimit(dept, offset, pageBean.getLimit());
        final long rowCount = deptService.getRowCount(dept);
        return returnSuccess(depts, rowCount);
    }

    /**
     * @param deptId
     * @return
     * @create by: Back
     * @description: 根据ID删除
     * @create time: 2020/12/24 9:53
     */

    @PutMapping("deleteById")
    public ReturnBean deleteById(Integer deptId) {
        final boolean delete = deptService.deleteById(deptId);
        if (delete) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param ids
     * @return
     * @create by: Back
     * @description: 批量删除
     * @create time: 2020/12/24 9:53
     */

    @PutMapping("deleteByIds")
    public ReturnBean deleteByIds(String ids) {
        final boolean delete = deptService.deleteByIds(ids);
        if (delete) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @param dept
     * @return
     * @create by: Back
     * @description: 修改
     * @create time: 2020/12/24 9:54
     */

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

    /**
     * @param dept
     * @return
     * @create by: Back
     * @description: 添加
     * @create time: 2020/12/24 9:54
     */

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