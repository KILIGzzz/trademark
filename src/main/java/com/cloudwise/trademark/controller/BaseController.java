package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.Attendance;
import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.util.ReturnStatusEnum;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2020/12/14 16:01
 * @description ：
 * @modified By：
 */
public class BaseController {
    /**
     * @param pageBean:
     * @return int
     * @create by: IvanZ
     * @description : 获取offset
     * @create time: 2020/12/14 16:05
     */
    public int getOffset(PageBean pageBean) {
        return (pageBean.getPage() - 1) * pageBean.getLimit();
    }

    /**
     * @param data:
     * @return com.cloudwise.entity.ReturnBean
     * @create by: IvanZ
     * @description : 返回正确的信息
     * @create time: 2020/12/14 16:14
     */
    public ReturnBean returnSuccess(Object data, Long... counts) {
        ReturnBean returnBean = new ReturnBean();
        returnBean.setCode(ReturnStatusEnum.SUCCESS.getCode());
        returnBean.setMsg(ReturnStatusEnum.SUCCESS.getMsg());
        setCount(returnBean, counts);
        returnBean.setData(data);
        return returnBean;
    }

    /**
     * @param data:
     * @return com.cloudwise.entity.ReturnBean
     * @create by: IvanZ
     * @description : 返回错误的信息
     * @create time: 2020/12/14 16:14
     */
    public ReturnBean returnFail(Object data, Long... counts) {
        ReturnBean returnBean = new ReturnBean();
        returnBean.setCode(ReturnStatusEnum.FAIL.getCode());
        returnBean.setMsg(ReturnStatusEnum.FAIL.getMsg());
        setCount(returnBean, counts);
        returnBean.setData(data);
        return returnBean;
    }

    /**
     * @param returnBean:
     * @param counts:
     * @return void
     * @create by: IvanZ
     * @description : 设置count
     * @create time: 2020/12/14 16:19
     */
    public void setCount(ReturnBean returnBean, Long[] counts) {
        if (counts != null) {
            for (Long count : counts) {
                returnBean.setCount(count);
            }
        }
    }

    /**
     * @param :
     * @return void
     * @create by: IvanZ
     * @description : 导入考勤表
     * @create time: 2020/12/29 14:06
     */
    public List<Attendance> importAttendance() throws IOException {
        BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\KILIG\\Desktop\\1_attlog.txt"));
        List<Attendance> mapList = new ArrayList<>();
        String line;
        while ((line = br.readLine()) != null) {
            //分割行
            String[] lineArray = line.split("\t");
            //创建一个map存储所需数据
            Attendance attendance = new Attendance();
            //处理user_id
            //获取user_id
            String[] ids = lineArray[0].split(" ");
            //将用户id存入实体类
            attendance.setUserId(Integer.parseInt(ids[ids.length - 1]));
            //处理签到签退时间
            attendance.setAttendanceTime(lineArray[1]);
            mapList.add(attendance);
        }
        br.close();
        return mapList;
    }

}
