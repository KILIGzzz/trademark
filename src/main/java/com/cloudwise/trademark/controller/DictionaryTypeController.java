package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.DictionaryType;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.DictionaryTypeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public DictionaryType selectOne(Integer id) {
        return this.dictionaryTypeService.queryById(id);
    }

    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, DictionaryType dictionaryType) {
        int offset = getOffset(pageBean);
        List<DictionaryType> dictionaryTypes = dictionaryTypeService.queryAllByConditionAndLimit(dictionaryType, offset, pageBean.getLimit());
        long rowCount = dictionaryTypeService.getRowCount(dictionaryType);
        return returnSuccess(dictionaryTypes, rowCount);
    }

    @PutMapping("update")
    public ReturnBean update(DictionaryType dictionaryType, HttpServletRequest request) {
        try {
            dictionaryTypeService.update(dictionaryType);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

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