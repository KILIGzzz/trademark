package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.service.MenuService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 菜单权限表(Menu)表控制层
 *
 * @author makejava
 * @since 2020-12-17 10:27:56
 */
@RestController
@RequestMapping("menu")
public class MenuController {
    /**
     * 服务对象
     */
    @Resource
    private MenuService menuService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Menu selectOne(Integer id) {
        return this.menuService.queryById(id);
    }

}