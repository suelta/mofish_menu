package com.mofish.service.Impl;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.UserInfo;
import com.mofish.dao.IMenuInfoDao;
import com.mofish.dao.IUserInfoDao;
import com.mofish.service.MenuInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class MenuInfoServiceImp implements MenuInfoService {
    @Autowired
    IMenuInfoDao menuInfoDao;

    @Autowired
    IUserInfoDao userInfoDao;

    @Override
    public MenuInfo findMenuInfoByMid(int mid) {
        return menuInfoDao.findMenuInfoByMid(mid);
    }

    @Override
    public UserInfo findUserInfoByUid(int uid) {
        return userInfoDao.findUserByUid(uid);
    }

    @Override
    public int addMenuInfo(MenuInfo menuInfo) {
        menuInfo.setMuptime(new Date(System.currentTimeMillis()));
        return menuInfoDao.addMenuInfo(menuInfo);
    }

    @Override
    public MenuInfo findMenuInfoByMaxMid() {
        return menuInfoDao.findMenuInfoByMaxMid();
    }
}
