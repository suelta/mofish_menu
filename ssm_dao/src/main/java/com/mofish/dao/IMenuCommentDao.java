package com.mofish.dao;

import com.mofish.bean.MenuComment;

import java.util.List;

public interface IMenuCommentDao {

    int addMenuComment(MenuComment menuComment);

    int deleteMenuComment(int mid);

    List<MenuComment> findMenuCommentByMid(int mid);

    //无此功能
    int updateMenuComment(MenuComment menuComment);
}
