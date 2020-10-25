package com.mofish.service.Impl;

import com.mofish.bean.UserInfo;
import com.mofish.bean.UserLike;
import com.mofish.dao.IUserInfoDao;
import com.mofish.dao.IUserLikeDao;
import com.mofish.service.HomePage_UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomePage_UserInfoServiceImp implements HomePage_UserInfoService {
    @Autowired
    private IUserInfoDao userInfoDao;

    @Autowired
    private IUserLikeDao userLikeDao;

    @Override
    public UserInfo findUser(int uid) {
        return userInfoDao.findUserByUid(uid);
    }

    @Override
    public UserLike findUserLike(int uid){
        return userLikeDao.getUserLike(uid);
    }
}
