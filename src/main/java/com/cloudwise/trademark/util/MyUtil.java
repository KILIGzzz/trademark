package com.cloudwise.trademark.util;

import com.cloudwise.trademark.entity.Attendance;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/30 17:22
 * @description 我的工具类
 * @modifiedBy
 */
public class MyUtil {

    //获取流文件
    private static void inputStreamToFile(InputStream ins, File file) {
        try {
            OutputStream os = new FileOutputStream(file);
            int bytesRead = 0;
            byte[] buffer = new byte[8192];
            while ((bytesRead = ins.read(buffer, 0, 8192)) != -1) {
                os.write(buffer, 0, bytesRead);
            }
            os.close();
            ins.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 将MultipartFile文件转File文件
     *
     * @param file MultipartFile格式的文件
     * @return File
     * @createBy Enzo
     * @createTime 2020/12/30 17:24
     */
    public static File multipartFileToFile(MultipartFile file) throws Exception {

        File toFile = null;
        if (file.equals("") || file.getSize() <= 0) {
            file = null;
        } else {
            InputStream ins = null;
            ins = file.getInputStream();
            toFile = new File(file.getOriginalFilename());
            inputStreamToFile(ins, toFile);
            ins.close();
        }
        return toFile;
    }


    /**
     * @param :
     * @return void
     * @create by: IvanZ
     * @description : 导入考勤表
     * @create time: 2020/12/29 14:06
     */
    public static List<Attendance> importAttendance(File file) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader(file));
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
