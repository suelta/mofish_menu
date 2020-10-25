package com.mofish.service.Impl;

import com.mofish.bean.UserLike;
import com.mofish.dao.IUserLikeDao;
import com.mofish.service.UserLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLikeServiceImp implements UserLikeService {
    @Autowired
    private IUserLikeDao userLikeDao;

    @Override
    public int addUserLikeCount(int uid){
        UserLike userLike = userLikeDao.getUserLike(uid);
        return userLikeDao.updateUserLike(userLike);
    }

    @Override
    public int addUserLike(int uid) {
        System.out.println(uid);
        return userLikeDao.addUserLike(uid);
    }
}
