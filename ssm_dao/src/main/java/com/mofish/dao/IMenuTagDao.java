package com.mofish.dao;

import com.mofish.bean.MenuTag;

import java.util.List;

public interface IMenuTagDao {

    int addMenuTag(MenuTag menuTag);

    int deleteMenuTag(MenuTag menuTag);

    List<MenuTag> findMenuTag(int mid);

    //不应该有修改标签
    int updateMenuTag(MenuTag menuTag);
}
