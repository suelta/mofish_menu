package com.mofish.dao;

import com.mofish.bean.UserInfo;

public interface ILoginDao {
    UserInfo findUserByTelAndPwd(UserInfo userInfo);        //通过用户id和密码查询
}
