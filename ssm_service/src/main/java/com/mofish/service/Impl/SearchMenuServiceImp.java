package com.mofish.service.Impl;

import com.github.pagehelper.PageHelper;
import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;
import com.mofish.dao.ISearchMenuDao;
import com.mofish.service.SearchMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SearchMenuServiceImp  implements SearchMenuService {

    @Autowired
    ISearchMenuDao searchMenuDao;

    @Override
    public List<MenuInfo> SearchMenuByMname(String mname, int page, int size) {
        PageHelper.startPage(page,size);
        return searchMenuDao.searchMenuByMname(mname);
    }

    @Override
    public List<UserInfo> SearchUserByUid(List<MenuInfo> menuInfoList) {
        List<UserInfo> userInfoList = new ArrayList<>();
        for(MenuInfo menuInfo:menuInfoList){
            userInfoList.add(searchMenuDao.searchUserByUid(menuInfo.getUid()));
        }
        return userInfoList;
    }

    @Override
    public List<MenuLike> SearchMenuLikeByMid(List<MenuInfo> menuInfoList) {
        List<MenuLike> MenuLikeList = new ArrayList<>();
        for(MenuInfo menuInfo:menuInfoList){
            MenuLikeList.add(searchMenuDao.searchMenuLikeByMid(menuInfo.getMid()));
        }
        return MenuLikeList;
    }
}
