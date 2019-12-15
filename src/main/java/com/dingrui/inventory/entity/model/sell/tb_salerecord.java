package com.dingrui.inventory.entity.model.sell;

import com.dingrui.inventory.common.entity.BaseModel;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class tb_salerecord extends BaseModel {
    private int id;
    private String clientId;
    private String productName;
    private String sellUserName;
    private String sellCount;
    private BigDecimal sellPrice;
    private String buyUserName;
    private String buyUserPhoneNumber;
}
