package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenuTag;
import com.mofish.bean.UserInfo;

import java.awt.*;
import java.util.List;

public interface CheckSameTagService {
    List<MenuInfo> getSameMenu(MenuTag menuTag);
    List<MenuInfo> getSameMenuPage(MenuTag menuTag,  int page, int size);
    List<UserInfo> getUpUser(List<MenuInfo> menuInfos);
    List<MenuLike> getMenuLike(List<MenuInfo> menuInfos);
    UserInfo findUserByUid(int uid);
    MenuLike findMlByMid(int mid);
}
