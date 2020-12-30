package com.cloudwise.trademark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/29 15:47
 * @description 统计管理控制器
 * @modifiedBy
 */
@Controller
@RequestMapping("statistical")
public class StatisticalController extends BaseController {
    @GetMapping("toBusinessEchart")
    public String toBusinessEchart() {
        return "businessEchart";
    }
    @GetMapping("toProgressEchart")
    public String toProgressEchart() {
        return "progressEchart";
    }

    @GetMapping("toVisitEchart")
    public String toVisitEchart() {
        return "visitEchart";
    }

    @GetMapping("toAttendance")
    public String toAttendance() {
        return "attendance";
    }

    @GetMapping("toAttendanceTable")
    public String toAttendanceTable() {
        return "attendanceTable";
    }
}
