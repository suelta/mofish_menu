package com.mofish.dao;

import com.mofish.bean.MenuMethod;

public interface IMenuMethodDao {
    int addMenuMethod(MenuMethod menuMethod);

    int deleteMenuMethod(MenuMethod menuMethod);

    MenuMethod findMenuMethod(int mid);

    int updateMenuMethod(MenuMethod menuMethod);
}
