package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Upload;

import java.util.List;

/**
 * (Upload)表服务接口
 *
 * @author makejava
 * @since 2020-12-25 15:12:29
 */
public interface UploadService {

    /**
     * 通过ID查询单条数据
     *
     * @param uploadId 主键
     * @return 实例对象
     */
    Upload queryById(Integer uploadId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Upload> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param upload 实例对象
     * @return 实例对象
     */
    Upload insert(Upload upload);

    /**
     * 修改数据
     *
     * @param upload 实例对象
     * @return 实例对象
     */
    Upload update(Upload upload);

    /**
     * 通过主键删除数据
     *
     * @param uploadId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer uploadId);

}