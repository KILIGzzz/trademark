package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Progress;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    List<Progress> queryAllByConditionAndLimit(Progress progress,int offset,int limit);


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
    long getRowCount(Progress progress);

}