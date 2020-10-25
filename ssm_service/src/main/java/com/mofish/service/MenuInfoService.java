package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.UserInfo;

public interface MenuInfoService {
    MenuInfo findMenuInfoByMid(int mid);
    UserInfo findUserInfoByUid(int uid);
    int addMenuInfo(MenuInfo menuInfo);
    MenuInfo findMenuInfoByMaxMid();
}
