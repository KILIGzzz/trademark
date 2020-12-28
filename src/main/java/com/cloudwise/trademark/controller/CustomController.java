package com.cloudwise.trademark.controller;

import com.alibaba.excel.EasyExcel;
import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.listener.DataListener;
import com.cloudwise.trademark.service.CustomService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (Custom)表控制层
 *
 * @author makejava
 * @since 2020-12-22 14:54:14
 */
@RestController
@RequestMapping("custom")
public class CustomController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private CustomService customService;

    /**
     * 通过主键查询单条数据
     *
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public ReturnBean selectOne(Integer customId) {
        Custom custom = this.customService.queryById(customId);
        List<Custom> list = new ArrayList<>();
        list.add(custom);
        return returnSuccess(list);
    }

    /**
     * @return ReturnBean结果集
     * @create by: ydq
     * @description: 方法作用：查询所有并分页
     * @create time: 2020/12/22 15:07
     * @param: pageBean分页参数
     * @param: custom条件查询的属性
     */
    @GetMapping("selectAll")
    public ReturnBean selectAll(PageBean pageBean, Custom custom) {
        //计算分页参数
        int offset = getOffset(pageBean);
        List<Custom> customList = customService.queryAllByConditionAndLimit(custom, offset, pageBean.getLimit());
        //返回json结果
        ReturnBean returnBean = returnSuccess(customList, customService.getCount(custom));
        return returnBean;
    }

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：添加客户
     * @create time: 2020/12/23 10:58
     * @param:
     */
    @PostMapping("add")
    public ReturnBean add(Custom custom) {
        try {
            custom.setCreateTime(new Date());
            Custom insert = customService.insert(custom);
            return returnSuccess(insert);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：修改
     * @create time: 2020/12/23 12:13
     * @param:
     */
    @PutMapping("update")
    public ReturnBean update(Custom custom) {
        try {
            custom.setUpdateTime(new Date());
            Custom update = customService.update(custom);
            return returnSuccess(update);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * 导入Excel数据
     *
     * @param file excel文件
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/28 23:43
     */
    @PostMapping("excelInsert")
    public ReturnBean excelInsert(MultipartFile file) {
        try {
            InputStream inputStream = file.getInputStream();
            EasyExcel.read(inputStream, Custom.class, new DataListener(customService)).sheet().doRead();
            return returnSuccess(null);
        } catch (IOException e) {
            return returnFail(null);
        }
    }
}