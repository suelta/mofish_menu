package com.mofish.service;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;

import java.util.List;

public interface PopularMenuService {
    //热门菜谱

    //点赞数50以上
    List<MenuLike> PopularMenu();

    //查询menulike
    List<MenuInfo> findMenuInfo(List<MenuLike> menuLikeList);

    //查询upuser
    List<UserInfo> findUpUser(List<MenuInfo> menuInfoList);


}
