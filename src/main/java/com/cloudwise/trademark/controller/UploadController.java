package com.cloudwise.trademark.controller;

import com.aliyun.oss.model.OSSObjectSummary;
import com.cloudwise.trademark.entity.UploadResult;
import com.cloudwise.trademark.service.impl.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/23 16:03
 * @description 数据上传控制器
 * @modifiedBy
 */
@RequestMapping("/file")
@Controller
public class UploadController {

    @Autowired
    private UploadService uploadService;

    /**
     * 文件上传到oss
     *
     * @param uploadFile
     * @return UploadResult
     * @createBy Enzo
     * @createTime 2020/12/23 17:31
     */
    @RequestMapping("/upload")
    @ResponseBody
    public UploadResult upload(@RequestParam("file") MultipartFile uploadFile)
            throws Exception {
        return this.uploadService.upload(uploadFile);
    }

    /**
     * 根据文件名删除oss上的文件
     *
     * @param objectName
     * @return UploadResult
     * @createBy Enzo
     * @createTime 2020/12/23 17:35
     */
    @RequestMapping("/delete")
    @ResponseBody
    public UploadResult delete(@RequestParam("fileName") String objectName)
            throws Exception {
        return this.uploadService.delete(objectName);
    }

    /**
     * 查询oss上的所有文件
     *
     * @return List<OSSObjectSummary>
     * @createBy Enzo
     * @createTime 2020/12/23 17:36
     */
    @RequestMapping("/list")
    @ResponseBody
    public List<OSSObjectSummary> list()
            throws Exception {
        return this.uploadService.list();
    }

    /**
     * 根据文件名下载oss上的文件
     *
     * @param objectName
     * @createBy Enzo
     * @createTime 2020/12/23 17:37
     */
    @RequestMapping("/download")
    @ResponseBody
    public void download(@RequestParam("fileName") String objectName, HttpServletResponse response) throws IOException {
        //通知浏览器以附件形式下载
        response.setHeader("Content-Disposition",
                "attachment;filename=" + new String(objectName.getBytes(), "ISO-8859-1"));
        this.uploadService.exportOssFile(response.getOutputStream(), objectName);
    }

}
