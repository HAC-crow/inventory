package com.dingrui.inventory.common.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageResult<T> {
    private boolean flag;
    private Integer code;
    private String message;
    private long total;
    private List<T> rows;
}
