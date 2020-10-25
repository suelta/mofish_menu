package com.mofish.dao;

import com.mofish.bean.MenuInfo;

import java.util.List;

public interface IMenuInfoDao {

    //添加菜谱的基本信息
    int addMenuInfo(MenuInfo menuInfo);

    //删除菜谱的基本信息
    int deleteMenuInfo(MenuInfo menuInfo);

    int updateMeunInfo(MenuInfo menuInfo);

    List<MenuInfo> findAllMenuInfo(MenuInfo menuInfo);//------------------

    //根据mid查找菜谱
    MenuInfo findMenuInfoByMid(int mid);

    //根据uid查找菜谱
    List<MenuInfo> findMenuInfoByUid(int uid);

    //获取mid
    MenuInfo findMenuInfoByMaxMid();
}
