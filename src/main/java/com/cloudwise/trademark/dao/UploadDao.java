package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Upload;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Upload)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-25 15:12:26
 */
public interface UploadDao {

    /**
     * 通过ID查询单条数据
     *
     * @param uploadId 主键
     * @return 实例对象
     */
    Upload queryById(Integer uploadId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Upload> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param upload 实例对象
     * @return 对象列表
     */
    List<Upload> queryAll(Upload upload);

    /**
     * 新增数据
     *
     * @param upload 实例对象
     * @return 影响行数
     */
    int insert(Upload upload);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Upload> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Upload> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Upload> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Upload> entities);

    /**
     * 修改数据
     *
     * @param upload 实例对象
     * @return 影响行数
     */
    int update(Upload upload);

    /**
     * 通过主键删除数据
     *
     * @param uploadId 主键
     * @return 影响行数
     */
    int deleteById(Integer uploadId);

}