package com.mofish.service.Impl;

import com.mofish.bean.MenuLike;
import com.mofish.dao.IMenuLikeDao;
import com.mofish.service.MenuLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuLikeServiceImp implements MenuLikeService {
    @Autowired
    private IMenuLikeDao menuLikeDao;

    @Override
    public int addMenuLikeCount(int mid){
        MenuLike menuLike = menuLikeDao.getMenuLike(mid);
        return menuLikeDao.updateMenuLike(menuLike);
    }

    @Override
    public int addMenuLike(int mid) {
        return menuLikeDao.addMenuLike(mid);
    }
}
