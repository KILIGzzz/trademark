package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Attendance;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.AttendanceService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.IOException;
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
public class AttendanceController extends BaseController{
    /**
     * 服务对象
     */
    @Resource
    private AttendanceService attendanceService;

    /**
     * @create by: IvanZ
     * @description : 到考勤表页面
     * @create time: 2020/12/29 18:19
     * @param :
     * @return org.springframework.web.servlet.ModelAndView
     */
    @GetMapping("toAttendanceTable")
    public ModelAndView toAttendanceTable(ModelAndView mv){
        mv.setViewName("attendanceTable");
        return mv;
    }

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
     * @create by: IvanZ
     * @description : 导入考勤表
     * @create time: 2020/12/29 15:25
     * @param :
     * @return java.util.List<com.cloudwise.trademark.entity.Attendance>
     */
    @RequestMapping("insertAttendance")
    public List<Attendance> insertAttendance(){
        try {
            List<Attendance> attendances = importAttendance();
            for (Attendance attendance : attendances) {
                attendanceService.insert(attendance);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * @create by: IvanZ
     * @description : 显示所有考勤表
     * @create time: 2020/12/29 15:30
     * @param pageBean:
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @GetMapping("findAll")
    public ReturnBean findAll(PageBean pageBean, Attendance attendance) {
        if (attendance.getAttendanceTime() == null){
            //默认显示11月25日
            attendance.setAttendanceTime("2020-11-25");
        }
        List<Attendance> attendances = attendanceService.queryAllByLimit(getOffset(pageBean), pageBean.getLimit(), attendance);
        long count = attendanceService.getCount(attendance);
        ReturnBean returnBean = returnSuccess(attendances, count);
        return returnBean;
    }

    /**
     * @create by: IvanZ
     * @description : 获取考勤分析图的数据
     * @create time: 2020/12/29 18:18
     * @param :
     * @return com.cloudwise.trademark.entity.ReturnBean
     */
    @GetMapping("showAttendanceEchart")
    public ReturnBean showAttendanceEchart(Attendance attendance){
        if (attendance.getAttendanceTime() == null){
            //默认显示11月25日
            attendance.setAttendanceTime("2020-11-25");
        }
        Integer count = Integer.parseInt(String.valueOf(attendanceService.getCount(attendance)));
        List<Attendance> attendances = attendanceService.queryAllByLimit(0,count,attendance);

        String[] userIdX = new String[attendances.size()];

        String[] checkInY = new String[attendances.size()];

        String[] checkOutY = new String[attendances.size()];

        Map<String,Object> resMap = new HashMap<>();

        for (int i = 0; i < attendances.size(); i++) {
            userIdX[i] = attendances.get(i).getUserId().toString();
            checkInY[i] = attendances.get(i).getCheckIn();
            checkOutY[i] = attendances.get(i).getCheckOut();
        }
        resMap.put("userIdX",userIdX);
        resMap.put("checkInY",checkInY);
        resMap.put("checkOutY",checkOutY);
        return returnSuccess(resMap);
    }
}