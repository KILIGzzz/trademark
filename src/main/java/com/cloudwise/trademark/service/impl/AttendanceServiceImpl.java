package com.cloudwise.trademark.service.impl;

import com.cloudwise.trademark.dao.AttendanceDao;
import com.cloudwise.trademark.entity.Attendance;
import com.cloudwise.trademark.service.AttendanceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * (Attendance)表服务实现类
 *
 * @author makejava
 * @since 2020-12-29 14:00:20
 */
@Service("attendanceService")
public class AttendanceServiceImpl implements AttendanceService {
    @Resource
    private AttendanceDao attendanceDao;

    /**
     * 通过ID查询单条数据
     *
     * @param attendanceId 主键
     * @return 实例对象
     */
    @Override
    public Attendance queryById(Integer attendanceId) {
        return this.attendanceDao.queryById(attendanceId);
    }

    @Override
    public List<Attendance> queryAllByLimit(int offset, int limit, Attendance attendance) {
        return this.attendanceDao.queryAllByLimit(offset, limit, attendance);
    }

    @Override
    public long getCount(Attendance attendance) {
        return attendanceDao.getCount(attendance);
    }


    /**
     * 新增数据
     *
     * @param attendance 实例对象
     * @return 实例对象
     */
    @Override
    public Attendance insert(Attendance attendance) {
        this.attendanceDao.insert(attendance);
        return attendance;
    }

    /**
     * 修改数据
     *
     * @param attendance 实例对象
     * @return 实例对象
     */
    @Override
    public Attendance update(Attendance attendance) {
        this.attendanceDao.update(attendance);
        return this.queryById(attendance.getAttendanceId());
    }

    /**
     * 通过主键删除数据
     *
     * @param attendanceId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer attendanceId) {
        return this.attendanceDao.deleteById(attendanceId) > 0;
    }

    @Override
    public Map<String, Object> showAttendanceEchart() {
        return null;
    }
}