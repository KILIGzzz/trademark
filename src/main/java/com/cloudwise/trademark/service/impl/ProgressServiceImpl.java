package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.ProgressDao;
import com.cloudwise.trademark.entity.Progress;
import com.cloudwise.trademark.service.ProgressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * (Progress)表服务实现类
 *
 * @author makejava
 * @since 2020-12-23 12:29:07
 */
@Service("progressService")
public class ProgressServiceImpl implements ProgressService {
    @Resource
    private ProgressDao progressDao;

    /**
     * 通过ID查询单条数据
     *
     * @param progressId 主键
     * @return 实例对象
     */
    @Override
    public Progress queryById(Integer progressId) {
        return this.progressDao.queryById(progressId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Progress> queryAllByLimit(int offset, int limit) {
        return this.progressDao.queryAllByLimit(offset, limit);
    }


    /**
     * @param progress,offset,limit
     * @return
     * @create by: Back
     * @description: 条件查询并分页
     * @create time: 2020/12/24 10:07
     */

    @Override
    public List<Progress> queryAllByConditionAndLimit(Progress progress, int offset, int limit) {
        return progressDao.queryAllByConditionAndLimit(progress, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param progress 实例对象
     * @return 实例对象
     */
    @Override
    public Progress insert(Progress progress) {
        this.progressDao.insert(progress);
        return progress;
    }

    /**
     * 修改数据
     *
     * @param progress 实例对象
     * @return 实例对象
     */
    @Override
    public Progress update(Progress progress) {
        this.progressDao.update(progress);
        return this.queryById(progress.getProgressId());
    }

    /**
     * 通过主键删除数据
     *
     * @param progressId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer progressId) {
        return this.progressDao.deleteById(progressId) > 0;
    }


    /**
     * @param progress
     * @return
     * @create by: Back
     * @description: 获取数据条数
     * @create time: 2020/12/24 10:07
     */
    @Override
    public long getRowCount(Progress progress) {
        return progressDao.getRowCount(progress);
    }


    /**
     * @return
     * @create by: Back
     * @description: 查询全部进度
     * @create time: 2020/12/24 10:09
     */
    @Override
    public List<Map<String, Object>> findAllProgress() {
        return progressDao.findAllProgress();
    }

}