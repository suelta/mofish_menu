package com.mofish.service.Impl;

import com.mofish.bean.MenuComment;
import com.mofish.dao.IMenuCommentDao;
import com.mofish.service.AddMenuCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddMenuCommentServiceImp implements AddMenuCommentService {
    @Autowired
    private IMenuCommentDao menuCommentDao;

    @Override
    public int addMenuComment(MenuComment menuComment){
        return menuCommentDao.addMenuComment(menuComment);
    }

    @Override
    public int deleteMenuComment(int mid){
        return menuCommentDao.deleteMenuComment(mid);
    }


}
