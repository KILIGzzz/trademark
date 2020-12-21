package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.*;
import com.cloudwise.trademark.service.RoleService;
import com.cloudwise.trademark.util.BaseController;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/**
 * 角色信息表(TblRole)表控制层
 *
 * @author makejava
 * @since 2020-12-19 18:03:32
 */
@RestController
@RequestMapping("role")
public class RoleController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private RoleService roleService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Role selectOne(Integer id) {
        return this.roleService.queryById(id);
    }

    /**
     * @create by: IvanZ
     * @description : 查询所有并分页
     * @create time: 2020/12/19 18:11
     * @param pageBean:
 * @param user:
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @GetMapping("findAll")
    public ReturnBean findAll(PageBean pageBean, User user){
        List<Role> roles = roleService.queryAllByLimit(getOffset(pageBean), pageBean.getLimit());
        long count = roleService.getCount();
        ReturnBean returnBean = returnSuccess(roles,count);
        return returnBean;
    }

    /**
     * @create by: IvanZ
     * @description : 通过id删除数据
     * @create time: 2020/12/19 19:10
     * @param roleId:
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("deleteById")
    public ReturnBean deleteById(Integer roleId){
        boolean b = roleService.deleteById(roleId);
        if (b) {
            roleService.deleteByRoleId(roleId);
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @create by: IvanZ
     * @description : 往role和role_menu表中添加数据
     * @create time: 2020/12/20 17:11
     * @param role:
 * @param menus:
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PostMapping("insertRole")
    public ReturnBean insertRole(Role role,String menus){
        Role insert = roleService.insert(role);
        if (insert != null){
            String[] menusId = menus.split(",");
            roleService.insertRoleMenu(insert.getRoleId(),menusId);
            return returnSuccess(null);
        }
        return returnFail(null);
    }

    /**
     * @create by: IvanZ
     * @description : 往role和role_menu表中修改数据
     * @create time: 2020/12/20 17:11
     * @param role:
     * @param menus:
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @PutMapping("updateRole")
    public ReturnBean updateRole(Role role,String menus){
        Role update = roleService.update(role);
        if (update != null){
            String[] menusId = menus.split(",");
            roleService.updateRoleMenu(update.getRoleId(),menusId);
            return returnSuccess(null);
        }
        return returnFail(null);
    }


    /**
     * @create by: IvanZ
     * @description : 获取树形菜单数据
     * @create time: 2020/12/20 1:12
     * @param :
     * @return java.lang.Object
     */
    @GetMapping("findAllMenu")
    public List<LayUiTree> findAllMenu(){
        List<Menu> menus = roleService.findAllMenu();

        List<LayUiTree> list = new ArrayList<>();
        for (Menu menu : menus) {
            if(menu.getParentId()==0){
                LayUiTree tree = new LayUiTree();
                tree.setId(menu.getMenuId());
                tree.setTitle(menu.getMenuName());
                //组件展开
//                tree.setSpread(true);
                tree.setChildren(getChildren(menu.getMenuId(),menus));
                list.add(tree);
            }
        }
        return list;
    }

    @GetMapping("findSelectMenu")
    public List<Integer> findSelectMenu(int roleId){
        return roleService.findSelectMenu(roleId);
    }


    /**
     * @create by: IvanZ
     * @description : 递归得到孩子节点
     * @create time: 2020/12/20 1:12
     * @param parentId:
 * @param menus:
     * @return java.util.List<com.cloudwise.trademark.entity.LayUiTree>
     */
    public List<LayUiTree> getChildren(Integer parentId,List<Menu> menus){
        List<LayUiTree> list = new ArrayList<>();
        for (Menu menu : menus) {
            if(menu.getParentId().equals(parentId)){
                LayUiTree tree = new LayUiTree();
                tree.setId(menu.getMenuId());
                tree.setTitle(menu.getMenuName());
                //组件展开
//                tree.setSpread(true);
                tree.setChildren(getChildren(menu.getMenuId(),menus));
                list.add(tree);
            }
        }
        return list;
    }

}