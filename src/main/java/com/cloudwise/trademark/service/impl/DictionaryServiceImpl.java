package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.DictionaryDao;
import com.cloudwise.trademark.entity.Dictionary;
import com.cloudwise.trademark.service.DictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Dictionary)表服务实现类
 *
 * @author makejava
 * @since 2020-12-23 19:28:22
 */
@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService {
    @Resource
    private DictionaryDao dictionaryDao;

    /**
     * 通过ID查询单条数据
     *
     * @param dictionaryId 主键
     * @return 实例对象
     */
    @Override
    public Dictionary queryById(Integer dictionaryId) {
        return this.dictionaryDao.queryById(dictionaryId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Dictionary> queryAllByLimit(int offset, int limit) {
        return this.dictionaryDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param dictionary 实例对象
     * @return 实例对象
     */
    @Override
    public Dictionary insert(Dictionary dictionary) {
        this.dictionaryDao.insert(dictionary);
        return dictionary;
    }

    /**
     * 修改数据
     *
     * @param dictionary 实例对象
     * @return 实例对象
     */
    @Override
    public Dictionary update(Dictionary dictionary) {
        this.dictionaryDao.update(dictionary);
        return this.queryById(dictionary.getDictionaryId());
    }

    /**
     * 通过主键删除数据
     *
     * @param dictionaryId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer dictionaryId) {
        return this.dictionaryDao.deleteById(dictionaryId) > 0;
    }

    @Override
    public List<Dictionary> queryAllByConditionAndLimit(Dictionary dictionary, int offset, int limit) {
        return dictionaryDao.queryAllByConditionAndLimit(dictionary, offset, limit);
    }

    @Override
    public long getRowCount(Dictionary dictionary) {
        return dictionaryDao.getRowCount(dictionary);
    }
}