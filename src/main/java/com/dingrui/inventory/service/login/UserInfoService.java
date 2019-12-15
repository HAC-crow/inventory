package com.dingrui.inventory.service.login;

import com.dingrui.inventory.dao.mapper.login.UserInfoMapper;
import com.dingrui.inventory.entity.model.login.sys_user;
import com.dingrui.inventory.entity.vo.login.User;
import com.dingrui.inventory.entity.vo.login.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInfoService {

    @Autowired
    UserInfoMapper userInfoMapper;

    public UserInfo getUserInfo(Integer id){
        UserInfo userInfo = new UserInfo();
        sys_user user = userInfoMapper.getUser(id);
        if(user!=null){
            userInfo.setName(user.getName());
            userInfo.setEmail(user.getEmail());
        }
        return userInfo;
    }

    public String login(User user){
        int result = userInfoMapper.isUserExist(user);
        if(result<1){
            return null;
        }
        return "8edf178ff3c8c5e40ef7a267a3130e81";
    }

}
