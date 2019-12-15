package com.dingrui.inventory.controller.purchase;

import cn.hutool.db.Page;
import com.alibaba.fastjson.JSON;
import com.dingrui.inventory.common.entity.PageResult;
import com.dingrui.inventory.common.entity.PageUtils;
import com.dingrui.inventory.common.entity.Result;
import com.dingrui.inventory.common.entity.StatusCode;
import com.dingrui.inventory.entity.model.purchase.tb_buyrecord;
import com.dingrui.inventory.entity.vo.purchase.PurchaseSee;
import com.dingrui.inventory.service.purchase.PurchaseService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/purchase")
@Api("购入表增删改查")
@CrossOrigin
public class PurchaseController {

    @Autowired
    PurchaseService purchaseService;

    @PostMapping("/getList")
    @ResponseBody
    @ApiOperation("查询全部记录")
    public PageResult<PurchaseSee> getList(@RequestBody PageUtils pageUtils){
        System.out.println(pageUtils);
        PageResult<PurchaseSee> result = new PageResult<>();
        try{
            List<PurchaseSee> list = purchaseService.getList(pageUtils);
            int count = purchaseService.getCount();
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("购入信息获取成功!");
            result.setRows(list);
            result.setTotal(count);
        }catch(Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @GetMapping("/getById/{id}")
    @ApiOperation("查询某一条记录")
    public Result<PurchaseSee> getById(@PathVariable("id") int id){
        Result<PurchaseSee> result =  new Result<>();
        try{
            PurchaseSee purchase = purchaseService.getById(id);
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("信息获取成功!");
            result.setData(purchase);
        }catch (Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @PostMapping("/create")
    @ResponseBody
    @ApiOperation("增加一条记录")
    public Result<Boolean> create(@RequestBody PurchaseSee purchaseSee){
        Result<Boolean> result = new Result<>();
        try{
            boolean flag = purchaseService.create(purchaseSee);
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("信息添加成功!");
            result.setData(flag);
        }catch(Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @GetMapping("/delete/{id}")
    @ApiOperation("删除一条数据")
    public Result<Boolean> delete(@PathVariable("id") int id){
        Result<Boolean> result = new Result<>();
        try{
            boolean flag = purchaseService.delete(id);
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("信息删除成功!");
            result.setData(flag);
        }catch (Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @PostMapping("/update")
    @ResponseBody
    @ApiOperation("更新一条记录")
    public Result<Boolean> update(@RequestBody PurchaseSee purchaseSee){
        System.out.println(JSON.toJSONString(purchaseSee));
        Result<Boolean> result = new Result<>();
        try{
            boolean flag = purchaseService.update(purchaseSee);
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("信息修改成功!");
            result.setData(flag);
        }catch (Exception e){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

}
