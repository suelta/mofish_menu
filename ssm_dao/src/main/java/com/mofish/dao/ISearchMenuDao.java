package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;

import java.util.List;

public interface ISearchMenuDao {
    List<MenuInfo> searchMenuByMname(String mname);
    UserInfo searchUserByUid(int uid);
    MenuLike searchMenuLikeByMid(int mid);
}
