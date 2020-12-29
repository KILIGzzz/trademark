package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.DictionaryTypeDao;
import com.cloudwise.trademark.entity.DictionaryType;
import com.cloudwise.trademark.service.DictionaryTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (DictionaryType)表服务实现类
 *
 * @author makejava
 * @since 2020-12-23 19:29:04
 */
@Service("dictionaryTypeService")
public class DictionaryTypeServiceImpl implements DictionaryTypeService {
    @Resource
    private DictionaryTypeDao dictionaryTypeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param typeId 主键
     * @return 实例对象
     */
    @Override
    public DictionaryType queryById(Integer typeId) {
        return this.dictionaryTypeDao.queryById(typeId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<DictionaryType> queryAllByLimit(int offset, int limit) {
        return this.dictionaryTypeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param dictionaryType 实例对象
     * @return 实例对象
     */
    @Override
    public DictionaryType insert(DictionaryType dictionaryType) {
        this.dictionaryTypeDao.insert(dictionaryType);
        return dictionaryType;
    }

    /**
     * 修改数据
     *
     * @param dictionaryType 实例对象
     * @return 实例对象
     */
    @Override
    public DictionaryType update(DictionaryType dictionaryType) {
        this.dictionaryTypeDao.update(dictionaryType);
        return this.queryById(dictionaryType.getTypeId());
    }

    /**
     * 通过主键删除数据
     *
     * @param typeId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer typeId) {
        return this.dictionaryTypeDao.deleteById(typeId) > 0;
    }

    @Override
    public List<DictionaryType> queryAllByConditionAndLimit(DictionaryType dictionaryType, int offset, int limit) {
        return dictionaryTypeDao.queryAllByConditionAndLimit(dictionaryType, offset, limit);
    }

    @Override
    public long getRowCount(DictionaryType dictionaryType) {
        return dictionaryTypeDao.getRowCount(dictionaryType);
    }

    @Override
    public List<DictionaryType> queryAllType() {
        return dictionaryTypeDao.queryAllType();
    }
}