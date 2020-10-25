package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.UserInfo;

import java.util.List;

public interface IUserInfoDao {
    List<UserInfo> findUserByUname(UserInfo userInfo); //通过用户名查询
    UserInfo findUserByTel(String utel);
    UserInfo findUserByUid(int uid);        //通过用户id查询
    int addUser(UserInfo userInfo);         //注册用户
    int updateUser(UserInfo userInfo); //更新用户
}
