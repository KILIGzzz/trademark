package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.Dictionary;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DictionaryService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Dictionary dictionary) {
        int offset = getOffset(pageBean);
        List<Dictionary> dictionaries = dictionaryService.queryAllByConditionAndLimit(dictionary, offset, pageBean.getLimit());
        long rowCount = dictionaryService.getRowCount(dictionary);
        return returnSuccess(dictionaries, rowCount);
    }
}