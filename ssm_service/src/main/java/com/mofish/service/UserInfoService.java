package com.mofish.service;

import com.mofish.bean.UserInfo;

public interface UserInfoService {
    //用户登录
    public boolean doLogin(UserInfo userInfo);
    //用户注册
    public int doRegister(UserInfo userInfo);
    //用户密码修改
    public  boolean doUpdataPwd(UserInfo userInfo, String cpassword);
    //用户信息修改
    public  boolean doUpdataUser(UserInfo userInfo);

    public UserInfo dofindOneUser(UserInfo userInfo);

}
