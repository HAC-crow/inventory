package com.dingrui.inventory.service.index;

import com.dingrui.inventory.dao.mapper.index.IndexMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexService {

    @Autowired
    IndexMapper indexMapper;

    public List<String> getXData(){
        List<String> xData = indexMapper.getXData();
        return xData;
    }

}
