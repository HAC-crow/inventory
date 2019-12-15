package com.dingrui.inventory.service.purchase;

import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSON;
import com.dingrui.inventory.common.entity.PageUtils;
import com.dingrui.inventory.dao.mapper.purchase.PurchaseMapper;
import com.dingrui.inventory.entity.model.purchase.tb_buyrecord;
import com.dingrui.inventory.entity.vo.purchase.PurchaseSee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class PurchaseService {

    @Autowired
    PurchaseMapper purchaseMapper;

    public PurchaseSee getById(int id){
        PurchaseSee purchaseSee = new PurchaseSee();
        tb_buyrecord data = purchaseMapper.getById(id);
        if(data != null){
            purchaseSee.setId(data.getId());
            purchaseSee.setProductName(data.getProductName());
            purchaseSee.setSellUserName(data.getSellUserName());
            purchaseSee.setSellCount(data.getSellCount());
            purchaseSee.setSellPrice(data.getSellPrice());
            purchaseSee.setBuyUserName(data.getBuyUserName());
            purchaseSee.setBuyUserPhoneNumber(data.getBuyUserPhoneNumber());
            purchaseSee.setCreatedAt(DateUtil.format(data.getCreatedAt(), "yyyy-MM-dd HH:mm:ss"));
        }
        return purchaseSee;
    }

    public List<PurchaseSee> getList(PageUtils pageUtils){
        List<PurchaseSee> purList = new ArrayList<>();
        int page = pageUtils.getPage();
        int limit = pageUtils.getLimit();
        int rowMin = ( page - 1 ) * limit ;
        String searchAll = "";
        if(pageUtils.getTitle() != null && pageUtils.getTitle() != ""){
            searchAll = " and productName like '%"+ pageUtils.getTitle() +"%'";
        }
        if(pageUtils.getDate1() != null){
            searchAll = searchAll+" and createdAt >= '"+ DateUtil.format(pageUtils.getDate1(),"yyyy-MM-dd") +"'";
        }
        if(pageUtils.getDate2() != null){
            searchAll = searchAll+" and createdAt <= '"+ DateUtil.format(pageUtils.getDate2(),"yyyy-MM-dd") +"'";
        }
        List<tb_buyrecord> tb_buyrecords = purchaseMapper.getList(rowMin,limit,searchAll);
        if(!CollectionUtils.isEmpty(tb_buyrecords)){
            for(tb_buyrecord x:tb_buyrecords){
                PurchaseSee purchaseSee = new PurchaseSee();
                purchaseSee.setId(x.getId());
                purchaseSee.setProductName(x.getProductName());
                purchaseSee.setSellUserName(x.getSellUserName());
                purchaseSee.setSellCount(x.getSellCount());
                purchaseSee.setSellPrice(x.getSellPrice());
                purchaseSee.setBuyUserName(x.getBuyUserName());
                purchaseSee.setBuyUserPhoneNumber(x.getBuyUserPhoneNumber());
                purchaseSee.setCreatedAt(DateUtil.format(x.getCreatedAt(), "yyyy-MM-dd HH:mm:ss"));
                purList.add(purchaseSee);
            }
        }
            return purList;
    }

    public int getCount(){
        int result = purchaseMapper.getCount();
        return result;
    }

    public boolean create(PurchaseSee x){
        tb_buyrecord t = new tb_buyrecord();
        t.setProductName(x.getProductName());
        t.setBuyUserName(x.getBuyUserName());
        t.setBuyUserPhoneNumber(x.getBuyUserPhoneNumber());
        t.setSellCount(x.getSellCount());
        t.setSellPrice(x.getSellPrice());
        t.setSellUserName(x.getSellUserName());
        t.setCreatedAt(new Date());
        int result = purchaseMapper.create(t);
        if(result == 1){
            return true;
        }else{
            return false;
        }
    }

    public boolean delete(int id){
        int result = purchaseMapper.delete(id);
        if(result == 1){
            return true;
        }else{
            return false;
        }
    }

    public boolean update(PurchaseSee x){
        tb_buyrecord t = new tb_buyrecord();
        t.setId(x.getId());
        t.setProductName(x.getProductName());
        t.setBuyUserName(x.getBuyUserName());
        t.setBuyUserPhoneNumber(x.getBuyUserPhoneNumber());
        t.setSellCount(x.getSellCount());
        t.setSellPrice(x.getSellPrice());
        t.setSellUserName(x.getSellUserName());
        t.setUpdateAt(new Date());
        System.out.println(JSON.toJSONString(t));
        int result = purchaseMapper.update(t);
        if(result == 1){
            return true;
        }else{
            return false;
        }
    }

    public List<Double> getBuyPur(){
        return purchaseMapper.getBuyPur();
    }
}
