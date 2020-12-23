package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.Progress;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.ProgressService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;
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
     * @create by: ydq
     * @description: 方法作用：条件查询加分页
     * @create time: 2020/12/23 15:16
     * @param: PageBean pageBean, Progress progress
     * @return ReturnBean
     */
    @GetMapping("queryAll")
    public ReturnBean queryAll(PageBean pageBean, Progress progress) {
        int offset = getOffset(pageBean);
        List<Progress> progresses = progressService.queryAllByConditionAndLimit(progress, offset, pageBean.getLimit());
        ReturnBean returnBean = returnSuccess(progresses, progressService.getRowCount(progress));
        return returnBean;
    }
    
    /**
     * @create by: ydq
     * @description: 方法作用：查询进度类型
     * @create time: 2020/12/23 16:47
     * @param: 
     * @return 
     */
    @GetMapping("findAllProgress")
    public  List<Map<String,Object>> findAllProgress (){
        return progressService.findAllProgress();
    }

    /**
     * @create by: ydq
     * @description: 方法作用：添加进度
     * @create time: 2020/12/23 17:48
     * @param:
     * @return
     */
    @PostMapping("add")
    public ReturnBean add (Progress progress){
        try {
            progress.setCreateTime(new Date());
            progressService.insert(progress);
            return returnSuccess(progress);
        } catch (Exception e) {
            return returnFail(null);
        }
    }
    
    /**
     * @create by: ydq
     * @description: 方法作用：修改进度
     * @create time: 2020/12/23 17:52
     * @param:
     * @return
     */
    @PostMapping("update")
    public ReturnBean update (Progress progress){
        try {
            progress.setUpdateTime(new Date());
            progressService.update(progress);
            return returnSuccess(progress);
        }catch (Exception e) {
            return returnFail(null);
        }

    }

    /**
     * @create by: IvanZ
     * @description : 显示客户信息和业务信息
     * @create time: 2020/12/23 15:56
     * @param mv:
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("showBusinessAndProgress")
    public ModelAndView showBusinessAndProgress(int customId, int businessId, ModelAndView mv){
        mv.addObject("customId",customId);
        mv.addObject("businessId",businessId);
        mv.setViewName("progress");
        return mv;
    }

}