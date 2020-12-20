package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.util.ReturnStatusEnum;

/**
 * @author : Enzo
 * @version : 1.0
 * @date : Created on 2020/12/14 16:01
 * @description : base controller
 * @modifiedBy :
 */
public class BaseController {
    /**
     * 通用分页参数工具
     *
     * @param pageBean
     * @return offset
     * @createBy Enzo
     * @createTime 2020/12/17 22:13
     */
    public int getOffset(PageBean pageBean) {
        int offset = (pageBean.getPage() - 1) * pageBean.getLimit();
        return offset;
    }

    /**
     * @return : returnBean
     * @createBy : Enzo
     * @description : 返回成功的结果
     * @createTime : 2020/12/14 16:29
     */
    public ReturnBean returnSuccess(Object data, Long... counts) {

        ReturnBean returnBean = new ReturnBean();
        //设置返回状态码
        returnBean.setCode(ReturnStatusEnum.SUCCESS.getCode());
        //设置返回提示信息
        returnBean.setMsg(ReturnStatusEnum.SUCCESS.getMessage());
        setCount(returnBean, counts);
        //设置返回数据
        returnBean.setData(data);
        return returnBean;
    }

    /**
     * @return : returnBean
     * @createBy : Enzo
     * @description : 返回失败的结果
     * @createTime : 2020/12/14 16:29
     */
    public ReturnBean returnFail(Object data, Long... counts) {
        ReturnBean returnBean = new ReturnBean();
        returnBean.setCode(ReturnStatusEnum.FAIL.getCode());
        returnBean.setMsg(ReturnStatusEnum.FAIL.getMessage());
        setCount(returnBean, counts);
        //设置返回数据
        returnBean.setData(data);
        return returnBean;
    }

    public void setCount(ReturnBean returnBean, Long[] counts) {
        if (counts != null) {
            for (Long count : counts) {
                returnBean.setCount(count);
            }
        }
    }
}
