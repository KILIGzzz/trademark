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

    /**
     * @return
     * @create by: Back
     * @description: 查询全部菜单
     * @create time: 2020/12/24 9:58
     */

    @GetMapping("queryAllMenu")
    public ReturnBean queryAllMenu() {
        List<Menu> menus = menuService.queryAllMenu();
        return returnSuccess(menus);
    }

    /**
     * @return
     * @create by: Back
     * @description: 查询全部，并转换为layuiTree
     * @create time: 2020/12/24 9:58
     */
    @GetMapping("queryAllMenus")
    public List queryAllMenus() {
        List<Menu> menus = menuService.queryAllMenu();
        return TreeUtil.fromMenuListToTreeList(menus);
    }

    /**
     * @param menuId
     * @return
     * @create by: Back
     * @description: 根据ID删除
     * @create time: 2020/12/24 10:01
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
     * @param menu
     * @return
     * @create by: Back
     * @description: 添加菜单
     * @create time: 2020/12/24 10:01
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
     * @param menu
     * @return
     * @create by: Back
     * @description: 编辑菜单
     * @create time: 2020/12/24 10:01
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
     * @param menuId
     * @return
     * @create by: Back
     * @description: 查找父节点ID
     * @create time: 2020/12/24 10:01
     */

    @GetMapping("findParentNameId")
    public ReturnBean findParentNameId(Integer menuId) {
        Menu parent = menuService.findParentNameId(menuId);
        return returnSuccess(parent);
    }
}