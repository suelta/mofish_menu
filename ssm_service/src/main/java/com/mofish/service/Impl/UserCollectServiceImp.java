package com.mofish.service.Impl;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserCollect;
import com.mofish.bean.UserLike;
import com.mofish.dao.IMenuLikeDao;
import com.mofish.dao.IUserCollectDao;
import com.mofish.service.UserCollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserCollectServiceImp implements UserCollectService {
    @Autowired
    private IUserCollectDao userCollectDao;

    @Autowired
    private IMenuLikeDao menuLikeDao;

    @Override
    public List<MenuInfo> findMenuInfo(int uid) {
        UserCollect userCollect = new UserCollect();
        userCollect.setUid(uid);
        return userCollectDao.findUserCollect(userCollect);
    }

    @Override
    public List<MenuLike> findMenuLike(List<MenuInfo> menuInfo) {
        List<MenuLike> menuLikeList = new ArrayList<>();
        for(MenuInfo mn:menuInfo){
            menuLikeList.add(menuLikeDao.getMenuLike(mn.getMid()));
        }
        return menuLikeList;
    }

    @Override
    public UserCollect isUserCollect(UserCollect userCollect) {
        return userCollectDao.isUserCollect(userCollect);
    }

    @Override
    public int addUserCollect(UserCollect userCollect) {
        return userCollectDao.addUserCollect(userCollect);
    }

    @Override
    public int deleteUserCollect(UserCollect userCollect) {
        return userCollectDao.deleteUserCollect(userCollect);
    }
}
