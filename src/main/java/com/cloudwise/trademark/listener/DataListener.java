package com.cloudwise.trademark.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.fastjson.JSON;
import com.cloudwise.trademark.entity.Custom;
import com.cloudwise.trademark.service.CustomService;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2020/12/28 21:18
 * @description Excel监听器
 * @modifiedBy
 */
public class DataListener extends AnalysisEventListener<Custom> {
    /**
     * 每隔5条存储数据库，然后清理list ，方便内存回收
     *
     * @createBy Enzo
     * @createTime 2020/12/28 21:39
     */
    private static final int BATCH_COUNT = 5;

    private final CustomService customService;

    List<Custom> customList = new ArrayList<Custom>();

    public DataListener(CustomService customService) {
        this.customService = customService;
    }

    /**
     * 每一条数据解析都会来调用
     *
     * @param custom 实体类对象
     * @createBy Enzo
     * @createTime 2020/12/28 21:37
     */
    @Override
    public void invoke(Custom custom, AnalysisContext analysisContext) {
        JSON.toJSONString(custom);
        customList.add(custom);
        //每达到BATCH_COUNT，需要去存储一次数据库，防止过多数据在内存中
        if (customList.size() >= BATCH_COUNT) {
            customService.insertBatch(customList);
            //清理list
            customList.clear();
        }
    }

    /**
     * 所有数据解析完成了 都会来调用
     *
     * @createBy Enzo
     * @createTime 2020/12/28 21:36
     */
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        //确保最后遗留的数据也存储到数据库
        customService.insertBatch(customList);
    }
}
