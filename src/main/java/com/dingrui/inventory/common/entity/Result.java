package com.dingrui.inventory.common.entity;

import lombok.Data;

@Data
public class Result<T> {
    private boolean flag;
    private Integer code;
    private String message;
    private T data;
}
