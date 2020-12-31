package com.cloudwise.trademark.service;

import com.cloudwise.trademark.entity.Attendance;
import com.cloudwise.trademark.entity.User;

import java.util.List;
import java.util.Map;

/**
 * (Attendance)表服务接口
 *
 * @author makejava
 * @since 2020-12-29 14:00:19
 */
public interface AttendanceService {

    /**
     * 通过ID查询单条数据
     *
     * @param attendanceId 主键
     * @return 实例对象
     */
    Attendance queryById(Integer attendanceId);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Attendance> queryAllByLimit(int offset, int limit, Attendance attendance);

    long getCount(Attendance attendance);


    /**
     * 新增数据
     *
     * @param attendance 实例对象
     * @return 实例对象
     */
    Attendance insert(Attendance attendance);

    /**
     * 修改数据
     *
     * @param attendance 实例对象
     * @return 实例对象
     */
    Attendance update(Attendance attendance);

    /**
     * 通过主键删除数据
     *
     * @param attendanceId 主键
     * @return 是否成功
     */
    boolean deleteById(Integer attendanceId);

    /**
     * @return
     * @create by: IvanZ
     * @description : 获取考勤表数据
     * @create time: 2020/12/29 16:36
     */
    Map<String, Object> showAttendanceEchart();

    void deleteAll();

}