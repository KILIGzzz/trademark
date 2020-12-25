package com.cloudwise.trademark.service.impl;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.util.RandomUtil;
import com.aliyun.oss.OSS;
import com.aliyun.oss.model.ListObjectsRequest;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.OSSObjectSummary;
import com.aliyun.oss.model.ObjectListing;
import com.cloudwise.trademark.config.AliyunOssConfig;
import com.cloudwise.trademark.entity.UploadResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.List;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/23 16:10
 * @description upload service
 * @modifiedBy
 */
@Service
public class UploadFileService {
    /**
     * 允许上传的格式
     */
    private static final String[] FILE_TYPE = new String[]{".bmp", ".jpg", ".jpeg", ".gif", ".png", ".zip", ".tar", ".txt"};
    @Autowired
    private OSS ossClient;
    @Autowired
    private AliyunOssConfig aliyunOssConfig;


    /**
     * 上传文件并返回文件地址
     *
     * @param uploadFile 传入的文件
     * @return UploadResult 实体类
     * @createBy Enzo
     * @createTime 2020/12/25 11:02
     */
    public UploadResult upload(MultipartFile uploadFile) {
        // 校验文件格式
        boolean isLegal = false;
        for (String type : FILE_TYPE) {
            if (StringUtils.endsWithIgnoreCase(uploadFile.getOriginalFilename(),
                    type)) {
                isLegal = true;
                break;
            }
        }

        //封装Result对象，并且将文件的byte数组放置到result对象中
        UploadResult fileUploadResult = new UploadResult();
        if (!isLegal) {
            fileUploadResult.setStatus("error");
            return fileUploadResult;
        }
        //获取原始文件名
        String fileName = uploadFile.getOriginalFilename();
        //将原始文件名修改成新文件名，防止重名覆盖
        String filePath = getFilePath(fileName);
        // 上传到阿里云
        try {
            ossClient.putObject(aliyunOssConfig.getBucketName(), filePath, new
                    ByteArrayInputStream(uploadFile.getBytes()));
        } catch (Exception e) {
            e.printStackTrace();
            //上传失败
            fileUploadResult.setStatus("error");
            return fileUploadResult;
        }
        fileUploadResult.setFileName(fileName);
        fileUploadResult.setStatus("done");
        fileUploadResult.setResponse("success");
        fileUploadResult.setName(this.aliyunOssConfig.getUrlPrefix() + filePath);
        fileUploadResult.setUid(String.valueOf(System.currentTimeMillis()));
        return fileUploadResult;
    }

    /**
     * 生成路径以及文件名 例如：//images/2020/07/22/75564277467979898.jpg
     *
     * @param sourceFileName 原文件名
     * @return String getFilePath
     * @createBy Enzo
     * @createTime 2020/12/23 17:13
     */
    private String getFilePath(String sourceFileName) {
        //xxxx.jpg，以.分隔文件名，返回一个字符串数组
        String[] strings = sourceFileName.split("\\.");
        //获取文件的后缀
        String suffix = strings[strings.length - 1];
        DateTime dateTime = new DateTime();
        return "myFile/" + dateTime.toString("yyyy")
                + "/" + dateTime.toString("MM") + "/"
                + dateTime.toString("dd") + "/" + System.currentTimeMillis() +
                RandomUtil.randomInts(6) + "." +
                suffix;
    }

    /**
     * 查看文件列表
     *
     * @return List<OSSObjectSummary>
     * @createBy Enzo
     * @createTime 2020/12/23 17:18
     */
    public List<OSSObjectSummary> list() {
        // 设置最大个数。
        final int maxKeys = 200;
        // 列举文件。
        ObjectListing objectListing = ossClient.listObjects(new ListObjectsRequest(aliyunOssConfig.getBucketName()).withMaxKeys(maxKeys));
        List<OSSObjectSummary> sums = objectListing.getObjectSummaries();
        return sums;
    }

    /**
     * 文件删除
     *
     * @param objectName 文件名
     * @return UploadResult
     * @createBy Enzo
     * @createTime 2020/12/23 17:20
     */
    public UploadResult delete(String objectName) {
        // 根据BucketName,objectName删除文件
        ossClient.deleteObject(aliyunOssConfig.getBucketName(), objectName);
        UploadResult fileUploadResult = new UploadResult();
        fileUploadResult.setName(objectName);
        fileUploadResult.setStatus("removed");
        fileUploadResult.setResponse("success");
        return fileUploadResult;
    }

    /**
     * 文件下载
     *
     * @param os
     * @param objectName
     * @createBy Enzo
     * @createTime 2020/12/23 17:21
     */
    public void exportOssFile(OutputStream os, String objectName) throws IOException {
        // ossObject包含文件所在的存储空间名称、文件名称、文件元信息以及一个输入流。
        OSSObject ossObject = ossClient.getObject(aliyunOssConfig.getBucketName(), objectName);
        // 读取文件内容。
        BufferedInputStream in = new BufferedInputStream(ossObject.getObjectContent());
        BufferedOutputStream out = new BufferedOutputStream(os);
        byte[] buffer = new byte[1024];
        int lenght = 0;
        while ((lenght = in.read(buffer)) != -1) {
            out.write(buffer, 0, lenght);
        }
        if (out != null) {
            out.flush();
            out.close();
        }
        if (in != null) {
            in.close();
        }
    }
}
