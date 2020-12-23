package com.cloudwise.trademark.controller;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.util.ReturnStatusEnum;

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
}
