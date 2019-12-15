package com.dingrui.inventory.dao.mapper.login;

import com.dingrui.inventory.entity.model.login.sys_user;
import com.dingrui.inventory.entity.vo.login.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserInfoMapper {
    sys_user getUser(@Param("id") int id);
    int isUserExist(User user);
}
