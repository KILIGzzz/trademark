package com.cloudwise.trademark.config;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

/**
 * @author Enzo
 * @version 1.0
 * @date Created at 2020/12/23 15:33
 * @description 阿里云oss配置
 * @modifiedBy
 */
@Configuration
@Data
@PropertySource(value = {"classpath:application.yml"})
@ConfigurationProperties(prefix = "aliyun")
public class AliyunOssConfig {
    private String endpoint;
    private String accessKeyId;
    private String accessKeySecret;
    private String bucketName;
    private String urlPrefix;

    @Bean
    public OSS ossClient() {
        return new OSSClient(endpoint, accessKeyId, accessKeySecret);
    }
}
