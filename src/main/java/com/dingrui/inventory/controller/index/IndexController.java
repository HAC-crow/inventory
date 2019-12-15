package com.dingrui.inventory.controller.index;

import com.dingrui.inventory.common.entity.Result;
import com.dingrui.inventory.common.entity.StatusCode;
import com.dingrui.inventory.entity.vo.index.DataEcharts;
import com.dingrui.inventory.service.index.IndexService;
import com.dingrui.inventory.service.purchase.PurchaseService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Api("首页")
@RestController
@RequestMapping("/api/v1")
public class IndexController {

    @Autowired
    IndexService indexService;

    @Autowired
    PurchaseService purchaseService;

    @GetMapping("/getXData")
    @ApiOperation("获取x轴信息")
    public Result<DataEcharts> getXData(){
        Result<DataEcharts> result = new Result<>();
        try{
            DataEcharts dataEcharts = new DataEcharts();
            List<String> xData = indexService.getXData();
            if(xData != null){
                dataEcharts.setXData(xData.toArray(new String[xData.size()]));
            }
            List<Double> purData = purchaseService.getBuyPur();
            if(purData != null){
                dataEcharts.setPurData(purData.toArray(new Double[purData.size()]));
            }
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("数据获取成功！");
            result.setData(dataEcharts);
        }catch(Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }



}
