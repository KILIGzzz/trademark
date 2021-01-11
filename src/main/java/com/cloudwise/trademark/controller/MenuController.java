package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.service.MenuService;
import com.cloudwise.trademark.util.TreeUtil;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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
     * 页面跳转
     *
     * @return ModelAndView
     * @createBy Enzo
     * @createTime 2020/12/29 22:53
     */
    @GetMapping("toMenu")
    public ModelAndView toMenu() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("manage/menu");
        return modelAndView;
    }

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

    /**
     * 查询全部菜单，用于菜单页的展示
     *
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:54
     */

    @GetMapping("queryAllMenu")
    public ReturnBean queryAllMenu() {
        List<Menu> menus = menuService.queryAllMenu();
        return returnSuccess(menus);
    }

    /**
     * 查询所有菜单，用于添加和编辑菜单时的生成树
     *
     * @return List
     * @createBy Enzo
     * @createTime 2020/12/29 22:54
     */
    @GetMapping("queryAllMenus")
    public List queryAllMenus() {
        List<Menu> menus = menuService.queryAllMenu();
        return TreeUtil.fromMenuListToTreeList(menus);
    }

    /**
     * 假删除
     *
     * @param menuId 主键
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:57
     */

    @PutMapping("deleteMenuById")
    public ReturnBean deleteMenuById(Integer menuId) {
        int i = menuService.deleteMenuById(menuId);
        if (i > 0) {
            return returnSuccess(null);
        } else {
            return returnFail(null);
        }
    }

    /**
     * 添加菜单
     *
     * @param menu 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:58
     */

    @PostMapping("insertMenu")
    public ReturnBean insertMenu(Menu menu) {
        if (menu.getParentId() == null) {
            menu.setParentId(0);
        }
        Menu insert = menuService.insert(menu);
        if (insert != null) {
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * 更新菜单
     *
     * @param menu 实体类
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:58
     */

    @PutMapping("updateMenu")
    public ReturnBean updateMenu(Menu menu) {
        try {
            Menu update = menuService.update(menu);
            return returnSuccess(update);
        } catch (Exception e) {
            return returnFail(null);
        }
    }

    /**
     * 根据id查找父节点
     *
     * @param menuId 主键
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/29 22:59
     */

    @GetMapping("findParentNameId")
    public ReturnBean findParentNameId(Integer menuId) {
        Menu parent = menuService.findParentNameId(menuId);
        return returnSuccess(parent);
    }
}