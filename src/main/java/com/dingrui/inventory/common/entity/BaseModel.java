package com.dingrui.inventory.common.entity;

import lombok.Data;

import java.util.Date;

@Data
public class BaseModel {
    private Date createdAt;
    private String createdById;
    private Date updateAt;
    private String updateById;
    private int deleted;
    private Date deletedAt;
    private String deletedById;
}
