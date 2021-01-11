package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.DictionaryType;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DictionaryTypeService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * (DictionaryType)表控制层
 *
 * @author makejava
 * @since 2020-12-23 19:29:04
 */
@RestController
@RequestMapping("dictionaryType")
public class DictionaryTypeController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private DictionaryTypeService dictionaryTypeService;

    /**
     * 页面跳转
     *
     * @return ModelAndView
     * @createBy Enzo
     * @createTime 2020/12/30 22:37
     */
    @GetMapping("toDictionaryType")
    public ModelAndView toDictionaryType() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("manage/dictionaryType");
        return modelAndView;
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public DictionaryType selectOne(Integer id) {
        return this.dictionaryTypeService.queryById(id);
    }

    /**
     * 按条件查询并分页
     *
     * @param pageBean       分页参数
     * @param dictionaryType 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:50
     */
    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, DictionaryType dictionaryType) {
        int offset = getOffset(pageBean);
        List<DictionaryType> dictionaryTypes = dictionaryTypeService.queryAllByConditionAndLimit(dictionaryType, offset, pageBean.getLimit());
        long rowCount = dictionaryTypeService.getRowCount(dictionaryType);
        return returnSuccess(dictionaryTypes, rowCount);
    }

    /**
     * 更新操作
     *
     * @param dictionaryType 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:51
     */
    @PutMapping("update")
    public ReturnBean update(DictionaryType dictionaryType) {
        try {
            dictionaryTypeService.update(dictionaryType);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * 增加操作
     *
     * @param dictionaryType 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:52
     */
    @PostMapping("insert")
    public ReturnBean insert(DictionaryType dictionaryType) {
        try {
            dictionaryTypeService.insert(dictionaryType);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }
}