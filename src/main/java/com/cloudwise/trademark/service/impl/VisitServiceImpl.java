package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.VisitDao;
import com.cloudwise.trademark.entity.Visit;
import com.cloudwise.trademark.service.VisitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Visit)表服务实现类
 *
 * @author makejava
 * @since 2020-12-23 20:11:29
 */
@Service("visitService")
public class VisitServiceImpl implements VisitService {
    @Resource
    private VisitDao visitDao;

    /**
     * 通过ID查询单条数据
     *
     * @param visitId 主键
     * @return 实例对象
     */
    @Override
    public Visit queryById(Integer visitId) {
        return this.visitDao.queryById(visitId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Visit> queryAllByLimit(Visit visit, int offset, int limit) {
        return this.visitDao.queryAllByLimit(visit, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param visit 实例对象
     * @return 实例对象
     */
    @Override
    public Visit insert(Visit visit) {
        this.visitDao.insert(visit);
        return visit;
    }

    /**
     * 修改数据
     *
     * @param visit 实例对象
     * @return 实例对象
     */
    @Override
    public Visit update(Visit visit) {
        this.visitDao.update(visit);
        return this.queryById(visit.getVisitId());
    }

    /**
     * 通过主键删除数据
     *
     * @param visitId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer visitId) {
        return this.visitDao.deleteById(visitId) > 0;
    }

    /**
     * @return getCount
     * @create by: ydq
     * @description: 方法作用：获取数据总条数
     * @create time: 2020/12/24 9:27
     */
    @Override
    public long getCount(Visit visit) {
        return visitDao.getCount(visit);
    }
}