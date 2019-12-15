package com.dingrui.inventory.controller.login;

import com.dingrui.inventory.common.entity.Result;
import com.dingrui.inventory.common.entity.StatusCode;
import com.dingrui.inventory.entity.vo.login.User;
import com.dingrui.inventory.entity.vo.login.UserInfo;
import com.dingrui.inventory.service.login.UserInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@Api("登录")
@RestController
@CrossOrigin
@RequestMapping("/api/v1")
public class LoginController {

    @Autowired
    UserInfoService userInfoService;

    @PostMapping("/login")
    @ResponseBody
    @ApiOperation("用户登录")
    public Result<String> login(@RequestBody User user){
        Result<String> result = new Result<>();
        try{
            String data = userInfoService.login(user);
            result.setCode(StatusCode.OK);
            result.setFlag(true);
            result.setMessage("用户登录成功!");
            result.setData(data);
        }catch (Exception e ){
            result.setCode(StatusCode.LOGIN_ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @GetMapping("/getUserInfo/{token}")
    @ApiOperation("获取用户信息")
    public Result<UserInfo> getUserInfo(@PathVariable String token){
        Result<UserInfo> result = new Result<>();
        try{
            if("8edf178ff3c8c5e40ef7a267a3130e81".equals(token)){
                UserInfo userInfo = userInfoService.getUserInfo(142);
                result.setCode(StatusCode.OK);
                result.setFlag(true);
                result.setMessage("用户信息获取成功!");
                result.setData(userInfo);
            }else{
                System.out.println("else");
            }
        }catch (Exception e ){
            result.setCode(StatusCode.ERROR);
            result.setFlag(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }
}
