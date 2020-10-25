package com.mofish.service.Impl;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenufromUser;
import com.mofish.dao.IMenuInfoDao;
import com.mofish.dao.IMenuLikeDao;
import com.mofish.dao.IMenufromUserDao;
import com.mofish.service.HomePage_MenufromUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HomePage_MenufromUserServiceImp implements HomePage_MenufromUserService {
    @Autowired
    private IMenuInfoDao menuInfoDao;

    @Autowired
    private IMenuLikeDao menuLikeDao;

    @Override
    public List<MenuInfo> findMenufromUser(int uid) {
        return menuInfoDao.findMenuInfoByUid(uid);
    }

    @Override
    public List<MenuLike> findMenuLikeCount(List<MenuInfo> menuInfoList){
        List<MenuLike> menuLikeList = new ArrayList<>();
        MenuLike menuLike = new MenuLike();
        for(MenuInfo menuInfo:menuInfoList){
            menuLikeList.add(menuLikeDao.getMenuLike(menuInfo.getMid()));
        }
        return menuLikeList;
    }

}
