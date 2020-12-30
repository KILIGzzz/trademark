package com.cloudwise.trademark.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;


/**
 * @author Enzo
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LayUiTree implements Serializable {

    private String title;
    private int id;
    private String field;
    private boolean checked;
    private boolean spread;
    private String url;
    private List<LayUiTree> children;
}
