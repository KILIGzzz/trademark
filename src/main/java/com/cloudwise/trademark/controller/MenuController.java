package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.MenuService;
import com.cloudwise.trademark.util.TreeUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 菜单权限表(Menu)表控制层
 *
 * @author makejava
 * @since 2020-12-17 10:27:56
 */
@RestController
@RequestMapping("menu")
public class MenuController extends BaseController {
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

    @GetMapping("queryAllMenu")
    public ReturnBean queryAllMenu() {
        List<Menu> menus = menuService.queryAllMenu();
        return returnSuccess(menus);
    }

    @GetMapping("queryAllMenus")
    public List queryAllMenus() {
        List<Menu> menus = menuService.queryAllMenu();
        return TreeUtil.fromMenuListToTreeList(menus);
    }

    @PutMapping("deleteMenuById")
    public ReturnBean deleteMenuById(Integer menuId) {
        int i = menuService.deleteMenuById(menuId);
        if (i > 0) {
            return returnSuccess(null);
        } else {
            return returnFail(null);
        }
    }

    @PostMapping("insertMenu")
    public ReturnBean insertMenu(Menu menu) {
        try {
            menuService.insert(menu);
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    @PutMapping("updateMenu")
    public ReturnBean updateMenu(Menu menu) {
        try {
            Menu update = menuService.update(menu);
            return returnSuccess(update);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    @GetMapping("findParentNameId")
    public ReturnBean findParentNameId(Integer menuId) {
        Menu parent = menuService.findParentNameId(menuId);
        return returnSuccess(parent);
    }
}