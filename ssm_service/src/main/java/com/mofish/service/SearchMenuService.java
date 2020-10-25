package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;

import java.util.List;

public interface SearchMenuService {
    List<MenuInfo> SearchMenuByMname(String mname, int page, int size);
    List<UserInfo> SearchUserByUid(List<MenuInfo> menuInfoList);
    List<MenuLike> SearchMenuLikeByMid(List<MenuInfo> menuInfoList);
}
