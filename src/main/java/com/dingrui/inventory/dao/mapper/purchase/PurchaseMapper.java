package com.dingrui.inventory.dao.mapper.purchase;

import com.dingrui.inventory.entity.model.purchase.tb_buyrecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PurchaseMapper {
    tb_buyrecord getById(@Param("id") int id);
    List<tb_buyrecord> getList(@Param("rowMin") int rowMin,@Param("limit") int limit,@Param("searchAll") String searchAll);
    int getCount();
    int create(tb_buyrecord pruchase );
    int delete(@Param("id") int id);
    int update(tb_buyrecord pruchase);
    List<Double> getBuyPur();
}
