package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.CustomDao;
import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.service.CustomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Custom)表服务实现类
 *
 * @author makejava
 * @since 2020-12-22 14:54:14
 */
@Service("customService")
public class CustomServiceImpl implements CustomService {
    @Resource
    private CustomDao customDao;

    /**
     * 通过ID查询单条数据
     *
     * @param customId 主键
     * @return 实例对象
     */
    @Override
    public Custom queryById(Integer customId) {
        return this.customDao.queryById(customId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Custom> queryAllByLimit(int offset, int limit) {
        return this.customDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param custom 实例对象
     * @return 实例对象
     */
    @Override
    public Custom insert(Custom custom) {
        this.customDao.insert(custom);
        return custom;
    }

    /**
     * 修改数据
     *
     * @param custom 实例对象
     * @return 实例对象
     */
    @Override
    public Custom update(Custom custom) {
        this.customDao.update(custom);
        return this.queryById(custom.getCustomId());
    }

    /**
     * 通过主键删除数据
     *
     * @param customId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer customId) {
        return this.customDao.deleteById(customId) > 0;
    }

    /**
     * @create by: ydq
     * @description: 方法作用：查询数据总条数
     * @create time: 2020/12/22 15:20
     * @param: custom
     * @return
     */
    @Override
    public long getCount(Custom custom) {
        List<Custom> customs = customDao.queryAll(custom);
        long a = customs.size();
        return a;
    }

    /**
     * @create by: ydq
     * @description: 方法作用：查询加分页
     * @create time: 2020/12/22 15:26
     * @param: custom条件查询传入的属性
     * @param: offset起始条数
     * @param: limit每页显示条数
     * @return List<Custom>条件查询结果集
     */
    @Override
    public List<Custom> queryAllByConditionAndLimit(Custom custom, int offset, int limit) {
        List<Custom> customs = customDao.queryAllByConditionAndLimit(custom, offset, limit);
        return customs;
    }

}