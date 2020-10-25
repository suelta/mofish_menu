package com.mofish.service;

import com.mofish.bean.UserInfo;
import com.mofish.bean.UserLike;

public interface HomePage_UserInfoService {
    UserInfo findUser(int uid);
    UserLike findUserLike(int uid);
}
