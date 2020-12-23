package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.entity.Business;
import com.cloudwise.trademark.dao.BusinessDao;
import com.cloudwise.trademark.service.BusinessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * (TblBusiness)表服务实现类
 *
 * @author makejava
 * @since 2020-12-22 11:12:23
 */
@Service("businessService")
public class BusinessServiceImpl implements BusinessService {
    @Resource
    private BusinessDao businessDao;

    /**
     * 通过ID查询单条数据
     *
     * @param businessId 主键
     * @return 实例对象
     */
    @Override
    public Business queryById(Integer businessId) {
        return this.businessDao.queryById(businessId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Business> queryAllByLimit(int offset, int limit) {
        return this.businessDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param business 实例对象
     * @return 实例对象
     */
    @Override
    public Business insert(Business business) {
        this.businessDao.insert(business);
        return business;
    }

    /**
     * 修改数据
     *
     * @param tb 实例对象
     * @return 实例对象
     */
    @Override
    public Business update(Business tb) {
        this.businessDao.update(tb);
        return this.queryById(tb.getBusinessId());
    }

    /**
     * 通过主键删除数据
     *
     * @param businessId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer businessId) {
        return this.businessDao.deleteById(businessId) > 0;
    }

    @Override
    public List<Business> queryAllByConditionAndLimit(Business tb, int offset, int limit) {
        return this.businessDao.queryAllByConditionAndLimit(tb,offset,limit);
    }

    @Override
    public long getCount(Business tb) {
        return this.businessDao.getCount(tb);
    }

    @Override
    public List<Map<String, Object>> findAllDictionary() {
        return this.businessDao.findAllDictionary();
    }
}