package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Progress;

import java.util.List;
import java.util.Map;

/**
 * (Progress)表服务接口
 *
 * @author makejava
 * @since 2020-12-23 12:29:06
 */
public interface ProgressService {

    /**
     * 通过ID查询单条数据
     *
     * @param progressId 主键
     * @return 实例对象
     */
    Progress queryById(Integer progressId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Progress> queryAllByLimit(int offset, int limit);

    /**
     * @return List<Progress>
     * @create by: ydq
     * @description: 方法作用：条件查询加分页
     * @create time: 2020/12/23 15:15
     * @param: Progress progress,int offset,int limit
     */
    List<Progress> queryAllByConditionAndLimit(Progress progress, int offset, int limit);


    /**
     * 新增数据
     *
     * @param progress 实例对象
     * @return 实例对象
     */
    Progress insert(Progress progress);

    /**
     * 修改数据
     *
     * @param progress 实例对象
     * @return 实例对象
     */
    Progress update(Progress progress);

    /**
     * 通过主键删除数据
     *
     * @param progressId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer progressId);

    /**
     * @return getRowCount总条数
     * @create by: ydq
     * @description: 方法作用：获取数据总条数
     * @create time: 2020/12/23 15:15
     * @param: progress查询属性
     */
    long getRowCount(Progress progress);

    /**
     * @return
     * @create by: ydq
     * @description: 方法作用：获取进度类型
     * @create time: 2020/12/23 16:44
     * @param:
     */
    List<Map<String, Object>> findAllProgress();

    /**
     * 查询进度id对应的客户id和客户姓名
     *
     * @param businessId 进度id
     * @return Map<String, Object>
     * @createBy Enzo
     * @createTime 2021/1/7 20:07
     */
   String findIdName(Integer businessId);

}