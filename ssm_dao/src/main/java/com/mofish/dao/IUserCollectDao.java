package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.UserCollect;

import java.util.List;

public interface IUserCollectDao {
    List<MenuInfo> findUserCollect(UserCollect userCollect);     //查询用户收藏的所有菜谱
    UserCollect isUserCollect(UserCollect userCollect);     //查询是否已经收藏
    int addUserCollect(UserCollect userCollect);            //插入一条收藏记录
    int deleteUserCollect(UserCollect userCollect);        //删除一条收藏记录

}
