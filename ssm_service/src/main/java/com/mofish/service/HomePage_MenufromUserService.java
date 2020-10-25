package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenufromUser;
import com.mofish.bean.UserInfo;

import java.util.List;

public interface HomePage_MenufromUserService {
    //查询uid用户上传的所有menuinfo
    List<MenuInfo> findMenufromUser(int uid);

    //查询菜谱简略信息
    List<MenuLike> findMenuLikeCount(List<MenuInfo> menuInfoList);
}
