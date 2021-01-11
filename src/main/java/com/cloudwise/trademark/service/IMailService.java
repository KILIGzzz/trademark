package com.cloudwise.trademark.service;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2021/1/6 18:11
 * @description 发邮件的接口
 * @modifiedBy
 */
public interface IMailService {

    /**
     * 发送文本邮件
     *
     * @param to      收件人
     * @param subject 主题
     * @param content 内容
     * @createBy Enzo
     * @createTime 2021/1/6 18:12
     */
    void sendSimpleMail(String to, String subject, String content);

    /**
     * 发送HTML邮件
     *
     * @param to      收件人
     * @param subject 主题
     * @param content 内容
     * @createBy Enzo
     * @createTime 2021/1/6 18:14
     */
    public void sendHtmlMail(String to, String subject, String content);

    /**
     * 发送带附件的邮件
     *
     * @param to       收件人
     * @param subject  主题
     * @param content  内容
     * @param filePath 附件
     * @createBy Enzo
     * @createTime 2021/1/6 18:15
     */
    public void sendAttachmentsMail(String to, String subject, String content, String filePath);
}
