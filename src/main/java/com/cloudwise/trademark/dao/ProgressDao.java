package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Progress;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * (Progress)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-23 12:29:05
 */
public interface ProgressDao {

    /**
     * 通过ID查询单条数据
     *
     * @param progressId 主键
     * @return 实例对象
     */
    Progress queryById(Integer progressId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Progress> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * @param progress 实体类
     * @return List<Progress> queryAllByConditionAndLimit
     * @createBy Enzo
     * @createTime 2020/12/23 12:35
     */
    List<Progress> queryAllByConditionAndLimit(@Param("progress") Progress progress, @Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param progress 实例对象
     * @return 对象列表
     */
    List<Progress> queryAll(Progress progress);

    /**
     * 新增数据
     *
     * @param progress 实例对象
     * @return 影响行数
     */
    int insert(Progress progress);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Progress> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Progress> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Progress> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Progress> entities);

    /**
     * 修改数据
     *
     * @param progress 实例对象
     * @return 影响行数
     */
    int update(Progress progress);

    /**
     * 通过主键删除数据
     *
     * @param progressId 主键
     * @return 影响行数
     */
    int deleteById(Integer progressId);

    /**
     * @create by: ydq
     * @description: 方法作用：获取数据总条数
     * @create time: 2020/12/23 15:13
     * @param: progress查询条件
     * @return getRowCount总条数
     */
    long getRowCount(Progress progress);

    /**
     * @create by: ydq
     * @description: 方法作用：查询所有的进度类型
     * @create time: 2020/12/23 16:26
     * @param:
     * @return
     */
    List<Map<String,Object>> findAllProgress();


}