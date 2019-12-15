package com.dingrui.inventory.common.entity;

import lombok.Data;

import java.util.Date;

@Data
public class PageUtils {
    private Integer page;
    private Integer limit;
    private Date date1;
    private Date date2;
    private String title;
    private String type;
    private String sort;
}
