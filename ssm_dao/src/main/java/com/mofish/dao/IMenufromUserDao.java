package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenufromUser;

import java.util.List;

public interface IMenufromUserDao {
    List<MenufromUser> findMenufromUser(MenufromUser menufromUser);     //查询该用户上传的所有菜谱
    int addMenufromUser(MenufromUser menufromUser);       //加入一条用户上传的菜谱记录
    int deleteMenufromUser(MenufromUser menufromUser);              //删除一条用户上传的菜谱记录

}
