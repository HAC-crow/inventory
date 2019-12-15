package com.dingrui.inventory.dao.mapper.sell;

import com.dingrui.inventory.entity.model.sell.tb_salerecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface SellMapper {
    tb_salerecord getById(@Param("id") int id);
    List<tb_salerecord> getList(@Param("rowMin") int rowMin, @Param("limit") int limit, @Param("searchAll") String searchAll);
    int getCount();
    int create(tb_salerecord sell );
    int delete(@Param("id") int id);
    int update(tb_salerecord sell);
    List<Double> getSellValue();
}
