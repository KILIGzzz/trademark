package com.cloudwise.trademark.entity;
import lombok.Data;
import java.io.Serializable;
import java.util.List;

/**
 * @create by: IvanZ
 * @description : 属性组件实体类
 * @create time: 2020/12/20 1:28
 * @return
 */
@Data
public class LayUiTree implements Serializable {

    private String title;
    private int id;
    private String field;
    private boolean checked;
    private boolean spread;
    private String url;
    private List<LayUiTree> children;
}
