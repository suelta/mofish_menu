package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserCollect;

import java.util.List;

public interface UserCollectService {
    List<MenuInfo> findMenuInfo(int uid);
    List<MenuLike> findMenuLike(List<MenuInfo> menuInfo);
    UserCollect isUserCollect(UserCollect userCollect);
    int addUserCollect(UserCollect userCollect);
    int deleteUserCollect(UserCollect userCollect);
}
