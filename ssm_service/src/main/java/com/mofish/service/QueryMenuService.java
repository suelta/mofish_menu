package com.mofish.service;

import com.mofish.bean.*;

import java.util.List;

public interface QueryMenuService {
    //查看菜谱详情
    public MenuDesc findMenuDesc (int mid);
    //查看菜谱做法
    public MenuMethod findMenuMethod (int mid);
    //查看菜谱点赞数
    public MenuLike findMenuLike (int mid);
    //查看菜谱评论
    public List<MenuComment> findMenuComment (int mid);
    //查看菜谱标签
    public List<MenuTag> findMenuTag (int mid);
}
