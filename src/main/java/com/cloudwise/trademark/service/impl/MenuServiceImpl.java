package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.MenuDao;
import com.cloudwise.trademark.entity.LayUiTree;
import com.cloudwise.trademark.entity.Menu;
import com.cloudwise.trademark.service.MenuService;
import com.cloudwise.trademark.util.TreeUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 菜单权限表(Menu)表服务实现类
 *
 * @author makejava
 * @since 2020-12-17 10:27:55
 */
@Service("menuService")
public class MenuServiceImpl implements MenuService {
    @Resource
    private MenuDao menuDao;

    /**
     * 通过ID查询单条数据
     *
     * @param menuId 主键
     * @return 实例对象
     */
    @Override
    public Menu queryById(Integer menuId) {
        return this.menuDao.queryById(menuId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Menu> queryAllByLimit(int offset, int limit) {
        return this.menuDao.queryAllByLimit(offset, limit);
    }

    /**
     * 查询所有菜单
     *
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/20 21:18
     */
    @Override
    public List<Menu> queryAllMenu() {
        return menuDao.queryAllMenu();
    }

    /**
     * 新增数据
     *
     * @param menu 实例对象
     * @return 实例对象
     */
    @Override
    public Menu insert(Menu menu) {
        this.menuDao.insert(menu);
        final List<Integer> roles = menuDao.selectAllRole();
        for (Integer role : roles) {
            menuDao.insertRoleMenu(role, menu.getMenuId());
        }
        return menu;
    }

    /**
     * 修改数据
     *
     * @param menu 实例对象
     * @return 实例对象
     */
    @Override
    public Menu update(Menu menu) {

        menuDao.update(menu);

        menuDao.deleteRoleMenu(menu.getMenuId());
        final List<Integer> roles = menuDao.selectAllRole();
        for (Integer role : roles) {
            menuDao.insertRoleMenu(role, menu.getMenuId());
        }
        return this.queryById(menu.getMenuId());
    }

    /**
     * 通过主键删除数据
     *
     * @param menuId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer menuId) {
        menuDao.deleteRoleMenu(menuId);
        return this.menuDao.deleteById(menuId) > 0;
    }

    /**
     * 根据用户名查询该用户有权限的菜单
     *
     * @param loginName
     * @return List<Menu>
     * @createBy Enzo
     * @createTime 2020/12/19 11:46
     */
    @Override
    public List<Menu> queryAllByLoginName(String loginName) {
        return menuDao.findMenusByLoginName(loginName);
    }

    /**
     * 查询树状菜单
     *
     * @param loginName
     * @return List<LayUiTree>
     * @createBy Enzo
     * @createTime 2020/12/19 11:47
     */
    @Override
    public List<LayUiTree> queryAllTreeByLoginName(String loginName) {
        List<LayUiTree> layUiTreeList = new ArrayList<>();
        //将menuList转换成layUiTreeList
        List<Menu> menuList = new ArrayList<>();
        if (null != loginName) {
            //查询出所有的menu根据登录名字
            menuList = this.queryAllByLoginName(loginName);
        } else {
            //查询出所有的menu
            menuList = this.queryAllByLoginName(null);
        }
        //将List<Menu>换成 List<LayUiTree>
        layUiTreeList = TreeUtil.fromMenuListToTreeList(menuList);
        return layUiTreeList;
    }

    @Override
    public List<Menu> findMenusByLoginName(String loginName) {
        return menuDao.findMenusByLoginName(loginName);
    }

    @Override
    public int deleteMenuById(Integer menuId) {
        return menuDao.deleteMenuById(menuId);
    }

    @Override
    public Menu findParentNameId(Integer menuId) {
        Menu parent = menuDao.findParentNameId(menuId);
        if (parent != null) {
            return parent;
        } else {
            Menu menu = new Menu();
            menu.setMenuName("没有上级目录");
            return menu;
        }
    }
}