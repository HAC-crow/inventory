package com.dingrui.inventory.entity.model.login;

import com.dingrui.inventory.common.entity.BaseModel;
import lombok.Data;

@Data
public class sys_user extends BaseModel {
    private int id;
    private String clientId;
    private String name;
    private String password;
    private String phoneNumber;
    private String email;
}
