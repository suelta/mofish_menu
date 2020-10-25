package com.mofish.dao;

import com.mofish.bean.MenuDesc;

public interface IMenuDescDao {

    int addMenuDesc(MenuDesc menuDesc);

    int deleteMenuDesc(MenuDesc menuDesc);

    MenuDesc findMenuDesc(int mid);

    int updateMenuDesc(MenuDesc menuDesc);
}
