package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DeptService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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
     * 页面跳转
     *
     * @return ModelAndView
     * @createBy Enzo
     * @createTime 2020/12/30 22:36
     */
    @GetMapping("toDept")
    public ModelAndView toDept() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("manage/dept");
        return modelAndView;
    }

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
     * 按条件查询dept表并分页
     *
     * @param pageBean 分页参数
     * @param dept     实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:40
     */

    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Dept dept) {
        int offset = getOffset(pageBean);
        final List<Dept> depts = deptService.queryAllByConditionAndLimit(dept, offset, pageBean.getLimit());
        final long rowCount = deptService.getRowCount(dept);
        return returnSuccess(depts, rowCount);
    }

    /**
     * 删除操作
     *
     * @param deptId 主键
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:41
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
     * 多选删除
     *
     * @param ids 需要删除的主键
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:42
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
     * 更新操作
     *
     * @param dept 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:43
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
     * 增加操作
     *
     * @param dept 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:45
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