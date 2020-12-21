package com.cloudwise.trademark.util;

import com.cloudwise.trademark.entity.PageBean;
import com.cloudwise.trademark.entity.ReturnBean;
import com.cloudwise.trademark.entity.ReturnStatusEnum;

/**
 * @author ：IvanZ
 * @version : 1.0
 * @date ：Created on 2020/12/14 16:01
 * @description ：
 * @modified By：
 */
public class BaseController {
    /**
     * @create by: IvanZ
     * @description : 获取offset
     * @create time: 2020/12/14 16:05
     * @param pageBean:
     * @return int
     */
    public int getOffset(PageBean pageBean){
        return (pageBean.getPage()-1)*pageBean.getLimit();
    }

    /**
     * @create by: IvanZ
     * @description : 返回正确的信息
     * @create time: 2020/12/14 16:14
     * @param data:
     * @return com.cloudwise.entity.ReturnBean
     */
    public ReturnBean returnSuccess(Object data,Long ...counts){
        ReturnBean returnBean = new ReturnBean();
        returnBean.setCode(ReturnStatusEnum.SUCCESS.getCode());
        returnBean.setMsg(ReturnStatusEnum.SUCCESS.getMsg());
        setCount(returnBean,counts);
        returnBean.setData(data);
        return returnBean;
    }

    /**
     * @create by: IvanZ
     * @description : 返回错误的信息
     * @create time: 2020/12/14 16:14
     * @param data:
     * @return com.cloudwise.entity.ReturnBean
     */
    public ReturnBean returnFail(Object data,Long ...counts){
        ReturnBean returnBean = new ReturnBean();
        returnBean.setCode(ReturnStatusEnum.FAIL.getCode());
        returnBean.setMsg(ReturnStatusEnum.FAIL.getMsg());
        setCount(returnBean,counts);
        returnBean.setData(data);
        return returnBean;
    }

    /**
     * @create by: IvanZ
     * @description : 设置count
     * @create time: 2020/12/14 16:19
     * @param returnBean:
 * @param counts:
     * @return void
     */
    public void setCount(ReturnBean returnBean,Long[] counts){
        if (counts != null){
            for (Long count : counts) {
                returnBean.setCount(count);
            }
        }
    }
}
