package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Attendance;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.AttendanceService;
import com.cloudwise.trademark.util.MyUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (Attendance)表控制层
 *
 * @author makejava
 * @since 2020-12-29 13:59:08
 */
@RestController
@RequestMapping("attendance")
public class AttendanceController extends BaseController {
    /**
     * 服务对象
     */
    @Resource
    private AttendanceService attendanceService;


    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Attendance selectOne(Integer id) {
        return this.attendanceService.queryById(id);
    }


    /**
     * @param pageBean:
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 显示所有考勤表
     * @create time: 2020/12/29 15:30
     */
    @GetMapping("findAll")
    public ReturnBean findAll(PageBean pageBean, Attendance attendance) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String today = dateTimeFormatter.format(LocalDateTime.now());
        if (attendance.getAttendanceTime() == null || "".equals(attendance.getAttendanceTime())) {
            //默认显示当天
            attendance.setAttendanceTime(today);
        }
        List<Attendance> attendances = attendanceService.queryAllByLimit(getOffset(pageBean), pageBean.getLimit(), attendance);
        long count = attendanceService.getCount(attendance);
        for (Attendance attendance1 : attendances) {
            String out = attendance1.getCheckOut();
            String[] s = out.split(" ");
            String[] split = s[1].split(":");
            Integer outHour = Integer.valueOf(split[0]);
            if (outHour < 17) {
                attendance1.setCheckOut("");
            }
            if (outHour < 20 && !"".equals(attendance1.getCheckOut())) {
                attendance1.setOutStatus("早退");
            }
            String in = attendance1.getCheckIn();
            String[] i = in.split(" ");
            String[] iSplit = i[1].split(":");
            Integer inHour = Integer.valueOf(iSplit[0]);
            if (inHour > 17) {
                attendance1.setCheckIn("");
            }
            if (inHour >= 9 && !"".equals(attendance1.getCheckIn())) {
                attendance1.setInStatus("迟到");
            }
        }
        ReturnBean returnBean = returnSuccess(attendances, count);
        return returnBean;
    }

    /**
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     * @create by: IvanZ
     * @description : 获取考勤分析图的数据
     * @create time: 2020/12/29 18:18
     */
    @GetMapping("showAttendanceEchart")
    public ReturnBean showAttendanceEchart(Attendance attendance) {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String today = dateTimeFormatter.format(LocalDateTime.now());
        if (attendance.getAttendanceTime() == null || "".equals(attendance.getAttendanceTime())) {
            //默认显示当天
            attendance.setAttendanceTime(today);
        }
        Integer count = Integer.parseInt(String.valueOf(attendanceService.getCount(attendance)));
        List<Attendance> attendances = attendanceService.queryAllByLimit(0, count, attendance);

        for (Attendance attendance1 : attendances) {
            String out = attendance1.getCheckOut();
            String[] s = out.split(" ");
            String[] split = s[1].split(":");
            Integer outHour = Integer.valueOf(split[0]);
            if (outHour < 17) {
                attendance1.setCheckOut("");
            }
            String in = attendance1.getCheckIn();
            String[] i = in.split(" ");
            String[] iSplit = i[1].split(":");
            Integer inHour = Integer.valueOf(iSplit[0]);
            if (inHour > 17) {
                attendance1.setCheckIn("");
            }
        }

        String[] loginNameX = new String[attendances.size()];

        String[] checkInY = new String[attendances.size()];

        String[] checkOutY = new String[attendances.size()];

        Map<String, Object> resMap = new HashMap<>();

        for (int i = 0; i < attendances.size(); i++) {
            loginNameX[i] = attendances.get(i).getLoginName();
            checkInY[i] = attendances.get(i).getCheckIn();
            checkOutY[i] = attendances.get(i).getCheckOut();
        }
        resMap.put("loginNameX", loginNameX);
        resMap.put("checkInY", checkInY);
        resMap.put("checkOutY", checkOutY);
        return returnSuccess(resMap);
    }

    /**
     * 接收考勤文件
     *
     * @param file 文件
     * @return ReturnBean
     * @createBy Enzo
     * @createTime 2020/12/30 17:08
     */
    @PostMapping("attInsert")
    public ReturnBean attInsert(MultipartFile file) throws Exception {
        try {
            File f = MyUtil.multipartFileToFile(file);
            List<Attendance> attendances = MyUtil.importAttendance(f);
            attendanceService.deleteAll();
            for (Attendance attendance : attendances) {
                attendanceService.insert(attendance);
            }
            return returnSuccess(null);
        } catch (Exception e) {
            return returnFail(null);
        }

    }
}