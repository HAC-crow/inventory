package com.dingrui.inventory.dao.mapper.index;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IndexMapper {
    List<String> getXData();
}
