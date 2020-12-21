package com.cloudwise.trademark.shiro;

import com.cloudwise.trademark.util.MyConstants;
import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2020/12/19 21:20
 * @description shiro 工具类
 * @modifiedBy
 */
public class ShiroUtil {
    /**
     * add salt to encrypt
     *
     * @param salt    盐值
     * @param message 信息
     * @return String encryptionBySalt
     * @createBy Enzo
     * @createTime 2020/12/19 22:26
     */
    public String encryptionBySalt(String salt, String message) {
        String algorithmName = MyConstants.ALGORITHM_NAME;
        int hashIterations = MyConstants.HASH_ITERATIONS;
        SimpleHash simpleHash = new SimpleHash(algorithmName, message, salt, hashIterations);
        return simpleHash.toString();
    }
}
