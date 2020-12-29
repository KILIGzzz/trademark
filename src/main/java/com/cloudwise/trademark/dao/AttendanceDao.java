package com.cloudwise.trademark.dao;

import com.cloudwise.trademark.entity.Attendance;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * (Attendance)表数据库访问层
 *
 * @author makejava
 * @since 2020-12-29 13:58:36
 */
public interface AttendanceDao {

    /**
     * 通过ID查询单条数据
     *
     * @param attendanceId 主键
     * @return 实例对象
     */
    Attendance queryById(Integer attendanceId);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Attendance> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit,@Param("attendance") Attendance attendance);
    long getCount(Attendance attendance);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param attendance 实例对象
     * @return 对象列表
     */
    List<Attendance> queryAll(Attendance attendance);

    /**
     * 新增数据
     *
     * @param attendance 实例对象
     * @return 影响行数
     */
    int insert(Attendance attendance);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<Attendance> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<Attendance> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<Attendance> 实例对象列表
     * @return 影响行数
     */
    int insertOrUpdateBatch(@Param("entities") List<Attendance> entities);

    /**
     * 修改数据
     *
     * @param attendance 实例对象
     * @return 影响行数
     */
    int update(Attendance attendance);

    /**
     * 通过主键删除数据
     *
     * @param attendanceId 主键
     * @return 影响行数
     */
    int deleteById(Integer attendanceId);

}