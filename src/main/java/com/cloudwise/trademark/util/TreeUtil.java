package com.cloudwise.trademark.util;


import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.entity.LayUiTree;
import com.cloudwise.trademark.entity.Menu;

import java.util.ArrayList;
import java.util.List;


/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/19 11:56
 * @description 树状菜单工具类
 * @modifiedBy
 */
public class TreeUtil {
    /**
     * 将List<Menu>换成 List<LayUiTree>
     *
     * @param menuList
     * @return List<LayUiTree>
     * @createBy Enzo
     * @createTime 2020/12/19 11:57
     */
    public static List<LayUiTree> fromMenuListToTreeList(List<Menu> menuList) {
        List<LayUiTree> treeList = new ArrayList<>();
        //遍历所有的menu对象，然后发现menu对象有孩子，就继续便利孩子，递归操作
        for (Menu menu : menuList) {
            //如果父亲的id为0，就说明是一级目录
            if (menu.getParentId() == 0) {
                //将menu转成tree对象
                LayUiTree tree = fromMenuToTree(menu);
                //找自己的孩子,给tree对象设置孩子children
                LayUiTree treeChildren = setTreeChildren(tree, menuList);
                treeList.add(treeChildren);
            }
        }
        return treeList;
    }

    /**
     * 找自己的孩子,给tree对象设置孩子children
     *
     * @param tree,menuList
     * @return LayUiTree
     * @createBy Enzo
     * @createTime 2020/12/19 11:58
     */
    public static LayUiTree setTreeChildren(LayUiTree tree, List<Menu> menuList) {
        //此集合封装所有的孩子
        List<LayUiTree> children = new ArrayList<>();
        for (Menu menu : menuList) {
            //tree的id是他所有孩子的父亲id
            if (menu.getParentId() == tree.getId()) {
                //将menu转成tree对象
                LayUiTree layUiTree = fromMenuToTree(menu);
                //递归设置自己的孩子
                children.add(setTreeChildren(layUiTree, menuList));
            }
        }
        tree.setChildren(children);
        return tree;
    }

    /**
     * 将menu转成tree对象
     *
     * @param menu
     * @return LayUiTree
     * @createBy Enzo
     * @createTime 2020/12/19 11:58
     */
    public static LayUiTree fromMenuToTree(Menu menu) {
        LayUiTree layUiTree = new LayUiTree();
        layUiTree.setId(menu.getMenuId());
        layUiTree.setIcon(menu.getIcon());
        layUiTree.setTitle(menu.getMenuName());
        layUiTree.setUrl(menu.getUrl());
        return layUiTree;
    }

    public static List<LayUiTree> fromDeptListToTreeList(List<Dept> deptList) {
        List<LayUiTree> treeList = new ArrayList<>();
        //遍历所有的menu对象，然后发现menu对象有孩子，就继续便利孩子，递归操作
        for (Dept dept : deptList) {
            //如果父亲的id为0，就说明是一级目录
            if (dept.getParentId() == 0) {
                //将menu转成tree对象
                LayUiTree tree = fromDeptToTree(dept);
                //找自己的孩子,给tree对象设置孩子children
                LayUiTree treeChildren = setDeptTreeChildren(tree, deptList);
                treeList.add(treeChildren);
            }
        }
        return treeList;
    }

    public static LayUiTree setDeptTreeChildren(LayUiTree tree, List<Dept> deptList) {
        //此集合封装所有的孩子
        List<LayUiTree> children = new ArrayList<>();
        for (Dept dept : deptList) {
            //tree的id是他所有孩子的父亲id
            if (dept.getParentId() == tree.getId()) {
                //将menu转成tree对象
                LayUiTree layUiTree = fromDeptToTree(dept);
                //递归设置自己的孩子
                children.add(setDeptTreeChildren(layUiTree, deptList));
            }
        }
        tree.setChildren(children);
        return tree;
    }

    public static LayUiTree fromDeptToTree(Dept dept) {
        LayUiTree layUiTree = new LayUiTree();
        layUiTree.setId(dept.getDeptId());
        layUiTree.setTitle(dept.getDeptName());
        return layUiTree;
    }
}
