package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;

import java.util.List;

public interface IMenuLikeDao {
    MenuLike getMenuLike(int mid);         //获取菜谱点赞数
    int updateMenuLike(MenuLike menuLike);           //更新菜谱点赞数
    int deleteMenuLike(MenuLike menuLike);                //删除菜谱点赞信息
    int addMenuLike(int mid);                   //插入一条菜谱点赞信息
    List<MenuLike> getPopularMenu(int likeCount);         //查询点赞数>likeCount的菜谱
}
