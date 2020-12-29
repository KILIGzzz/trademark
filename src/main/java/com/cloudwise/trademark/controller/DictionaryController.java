package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.*;
import com.cloudwise.trademark.service.DictionaryService;
import com.cloudwise.trademark.service.DictionaryTypeService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Dictionary)表控制层
 *
 * @author makejava
 * @since 2020-12-23 19:28:23
 */
@RestController
@RequestMapping("dictionary")
public class DictionaryController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private DictionaryService dictionaryService;
    @Resource
    private DictionaryTypeService dictionaryTypeService;

    @GetMapping("toDictionary")
    public ModelAndView toDictionary() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("dictionary");
        return modelAndView;
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Dictionary selectOne(Integer id) {
        return this.dictionaryService.queryById(id);
    }

    /**
     * 查询全部字典类型
     *
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:47
     */
    @GetMapping("selectAllType")
    public ReturnBean selectAllType() {
        List<DictionaryType> dictionaryTypes = dictionaryTypeService.queryAllType();
        return returnSuccess(dictionaryTypes);
    }

    /**
     * 按条件查询并分页
     *
     * @param pageBean   分页参数
     * @param dictionary 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:47
     */
    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Dictionary dictionary) {
        int offset = getOffset(pageBean);
        List<Dictionary> dictionaries = dictionaryService.queryAllByConditionAndLimit(dictionary, offset, pageBean.getLimit());
        long rowCount = dictionaryService.getRowCount(dictionary);
        return returnSuccess(dictionaries, rowCount);
    }

    /**
     * 更新操作
     *
     * @param dictionary 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:48
     */
    @PutMapping("update")
    public ReturnBean update(Dictionary dictionary) {
        try {
            dictionaryService.update(dictionary);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * 增加操作
     *
     * @param dictionary 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:50
     */
    @PostMapping("insert")
    public ReturnBean insert(Dictionary dictionary) {
        try {
            dictionaryService.insert(dictionary);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

}