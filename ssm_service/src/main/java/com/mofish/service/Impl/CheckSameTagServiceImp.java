package com.mofish.service.Impl;

import com.github.pagehelper.PageHelper;
import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenuTag;
import com.mofish.bean.UserInfo;
import com.mofish.dao.ICheckSameTagDao;
import com.mofish.dao.IMenuLikeDao;
import com.mofish.dao.IUserInfoDao;
import com.mofish.service.CheckSameTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CheckSameTagServiceImp implements CheckSameTagService {
    @Autowired
    private ICheckSameTagDao checkSameTagDao;

    @Autowired
    private IUserInfoDao userInfoDao;

    @Autowired
    private IMenuLikeDao menuLikeDao;

    @Override
    public List<MenuInfo> getSameMenuPage(MenuTag menuTag, int page, int size) {
        PageHelper.startPage(page,size);
        return checkSameTagDao.checkTag(menuTag);
    }

    @Override
    public List<MenuInfo> getSameMenu(MenuTag menuTag){
        return checkSameTagDao.checkTag(menuTag);
    }


    @Override
    public List<UserInfo> getUpUser(List<MenuInfo> menuInfos){
        List<UserInfo> userInfos = new ArrayList<>();
        for (MenuInfo menu:menuInfos) {
            userInfos.add(userInfoDao.findUserByUid(menu.getUid()));
        }
        return userInfos;
    }

    @Override
    public List<MenuLike> getMenuLike(List<MenuInfo> menuInfos){
        List<MenuLike> menuLikes = new ArrayList<>();
        for (MenuInfo menu:menuInfos) {
            menuLikes.add(menuLikeDao.getMenuLike(menu.getMid()));
        }
        return menuLikes;
    }

    @Override
    public UserInfo findUserByUid(int uid) {
        return userInfoDao.findUserByUid(uid);
    }

    @Override
    public MenuLike findMlByMid(int mid) {
        return menuLikeDao.getMenuLike(mid);
    }
}
