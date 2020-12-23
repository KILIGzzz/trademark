package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.Progress;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.ProgressService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Progress)表控制层
 *
 * @author makejava
 * @since 2020-12-23 12:29:07
 */
@RestController
@RequestMapping("progress")
public class ProgressController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private ProgressService progressService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Progress selectOne(Integer id) {
        return this.progressService.queryById(id);
    }

    @GetMapping("queryAll")
    public ReturnBean queryAll(PageBean pageBean, Progress progress) {
        int offset = getOffset(pageBean);
        List<Progress> progresses = progressService.queryAllByConditionAndLimit(progress, offset, pageBean.getLimit());
        long rowCount = progressService.getRowCount(progress);
        return returnSuccess(progresses, rowCount);
    }
}