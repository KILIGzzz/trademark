package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.Progress;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.Upload;
import com.cloudwise.trademark.service.ProgressService;
import com.cloudwise.trademark.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

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

    @Autowired
    private UploadService uploadService;

    @GetMapping("toProgress")
    public ModelAndView toProgress() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("progress");
        return modelAndView;
    }

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

    /**
     * @return ReturnBean
     * @create by: ydq
     * @description: 方法作用：条件查询加分页
     * @create time: 2020/12/23 15:16
     * @param: PageBean pageBean, Progress progress
     */
    @GetMapping("queryAll")
    public ReturnBean queryAll(PageBean pageBean, Progress progress) {

        int offset = getOffset(pageBean);
        List<Progress> progresses = progressService.queryAllByConditionAndLimit(progress, offset, pageBean.getLimit());
        ReturnBean returnBean = returnSuccess(progresses, progressService.getRowCount(progress));
        return returnBean;
    }

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：查询进度类型
     * @create time: 2020/12/23 16:47
     * @param:
     */
    @GetMapping("findAllProgress")
    public List<Map<String, Object>> findAllProgress() {
        return progressService.findAllProgress();
    }

    /**
     * @param progress
     * @return
     * @create by: ydq
     * @description: 方法作用：添加进度
     * @create time: 2020/12/23 17:48
     * @modifiedBy Enzo
     */
    @PostMapping("add")
    public ReturnBean add(Progress progress, Upload upload, String insertUpload, String insertNotice) {
        try {
            uploadService.insert(upload);
            Integer uploadId = upload.getUploadId();
            String sourceName = upload.getSourceName();
            if (sourceName.equals(insertUpload)) {
                progress.setUpload(uploadId);
            }
            if (sourceName.equals(insertNotice)) {
                progress.setNotice(uploadId);
            }
            progressService.insert(progress);
            return returnSuccess(progress);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：修改进度
     * @create time: 2020/12/23 17:52
     * @param:
     */
    @PostMapping("update")
    public ReturnBean update(Progress progress, Upload upload) {
        try {
            progressService.update(progress);
            if (progress.getUpload() != null) {
                upload.setUploadId(progress.getUpload());
            }
            if (progress.getNotice() != null) {
                upload.setUploadId(progress.getNotice());
            }
            uploadService.update(upload);
            return returnSuccess(progress);
        } catch (Exception e) {
            return returnFail(null);
        }

    }

    /**
     * @param mv:
     * @return org.springframework.web.servlet.ModelAndView
     * @create by: IvanZ
     * @description : 显示客户信息和业务信息
     * @create time: 2020/12/23 15:56
     */
    @GetMapping("showBusinessAndProgress")
    public ModelAndView showBusinessAndProgress(int customId, int businessId, ModelAndView mv) {
        mv.addObject("customId", customId);
        mv.addObject("businessId", businessId);
        mv.setViewName("progress");
        return mv;
    }

}