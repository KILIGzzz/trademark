package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.*;
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

    /**
     * 页面跳转
     *
     * @return ModelAndView
     * @createBy Enzo
     * @createTime 2020/12/29 23:00
     */
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
     * 添加进度
     *
     * @param progress  实体类
     * @param upload    实体类
     * @param uploadMap 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/31 10:32
     */
    @PostMapping("add")
    public ReturnBean add(Progress progress, Upload upload, UploadMap uploadMap) {
        try {
            String uploadName = uploadMap.getUploadSourceName();
            if (uploadName != null && !"".equals(uploadName)) {
                upload.setSourceName(uploadName);
                upload.setDestinationName(uploadMap.getUploadDtName());
                uploadService.insert(upload);
                progress.setUpload(upload.getUploadId());
            }
            String noticeName = uploadMap.getNoticeSourceName();
            if (noticeName != null && !"".equals(noticeName)) {
                upload.setSourceName(noticeName);
                upload.setDestinationName(uploadMap.getNoticeDtName());
                uploadService.insert(upload);
                progress.setNotice(upload.getUploadId());
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
    public ReturnBean update(Progress progress, Upload upload, UploadMap uploadMap) {
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