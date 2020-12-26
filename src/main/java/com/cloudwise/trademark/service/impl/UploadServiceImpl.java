package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.UploadDao;
import com.cloudwise.trademark.entity.Upload;
import com.cloudwise.trademark.service.UploadService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Upload)表服务实现类
 *
 * @author makejava
 * @since 2020-12-25 15:12:29
 */
@Service("uploadService")
public class UploadServiceImpl implements UploadService {
    @Resource
    private UploadDao uploadDao;

    /**
     * 通过ID查询单条数据
     *
     * @param uploadId 主键
     * @return 实例对象
     */
    @Override
    public Upload queryById(Integer uploadId) {
        return this.uploadDao.queryById(uploadId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Upload> queryAllByLimit(int offset, int limit) {
        return this.uploadDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param upload 实例对象
     * @return 实例对象
     */
    @Override
    public Upload insert(Upload upload) {
        this.uploadDao.insert(upload);
        return upload;
    }

    /**
     * 修改数据
     *
     * @param upload 实例对象
     * @return 实例对象
     */
    @Override
    public Upload update(Upload upload) {
        this.uploadDao.update(upload);
        return this.queryById(upload.getUploadId());
    }

    /**
     * 通过主键删除数据
     *
     * @param uploadId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer uploadId) {
        return this.uploadDao.deleteById(uploadId) > 0;
    }
}