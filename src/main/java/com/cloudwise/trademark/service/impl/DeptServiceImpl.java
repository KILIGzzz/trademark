package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.DeptDao;
import com.cloudwise.trademark.entity.Dept;
import com.cloudwise.trademark.service.DeptService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * 部门表(Dept)表服务实现类
 *
 * @author makejava
 * @since 2020-12-17 10:26:16
 */
@Service("deptService")
public class DeptServiceImpl implements DeptService {
    @Resource
    private DeptDao deptDao;

    /**
     * 通过ID查询单条数据
     *
     * @param deptId 主键
     * @return 实例对象
     */
    @Override
    public Dept queryById(Integer deptId) {
        return this.deptDao.queryById(deptId);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Dept> queryAllByLimit(int offset, int limit) {
        return this.deptDao.queryAllByLimit(offset, limit);
    }

    /**
     * @param dept,offset,limit
     * @return
     * @create by: Back
     * @description:
     * @create time: 2020/12/24 10:04
     */
    @Override
    public List<Dept> queryAllByConditionAndLimit(Dept dept, int offset, int limit) {
        return deptDao.queryAllByConditionAndLimit(dept, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param dept 实例对象
     * @return 实例对象
     */
    @Override
    public Dept insert(Dept dept) {
        this.deptDao.insert(dept);
        return dept;
    }

    /**
     * 修改数据
     *
     * @param dept 实例对象
     * @return 实例对象
     */
    @Override
    public Dept update(Dept dept) {
        this.deptDao.update(dept);
        return this.queryById(dept.getDeptId());
    }

    /**
     * 通过主键删除数据
     *
     * @param deptId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer deptId) {
        return this.deptDao.deleteById(deptId) > 0;
    }

    /**
     * 获取数据行数
     *
     * @param dept
     * @return long
     * @createBy Enzo
     * @createTime 2020/12/17 11:05
     */
    @Override
    public long getRowCount(Dept dept) {
        return deptDao.getRowCount(dept);
    }

    /**
     * 根据list中的id删除dept(改变状态)
     *
     * @param ids
     * @return 是否成功
     * @createBy Enzo
     * @createTime 2020/12/17 17:32
     */
    @Override
    public boolean deleteByIds(String ids) {
        if (ids != null && ids.length() > 0) {
            //将字符串转换成数组
            String[] strings = ids.split(",");
            //将数组转换成list
            List<String> idList = Arrays.asList(strings);
            int i = deptDao.deleteByIds(idList);
            if (i > 0) {
                return true;
            }
        }
        return false;
    }
}