package com.mofish.service.Impl;

import com.mofish.bean.*;
import com.mofish.dao.*;
import com.mofish.service.QueryMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QueryMenuServiceImp implements QueryMenuService {
    @Autowired
    private IMenuDescDao menuDescDao;
    @Autowired
    private IMenuCommentDao menuCommentDao;
    @Autowired
    private IMenuMethodDao menuMethodDao;
    @Autowired
    private IMenuLikeDao menuLikeDao;
    @Autowired
    private IMenuTagDao menuTagDao;
    @Override
    public MenuDesc findMenuDesc(int mid) {
        return menuDescDao.findMenuDesc(mid);
    }

    @Override
    public MenuMethod findMenuMethod(int mid) {
        return menuMethodDao.findMenuMethod(mid);
    }

    @Override
    public MenuLike findMenuLike(int mid) {
        return menuLikeDao.getMenuLike(mid);
    }

    @Override
    public List<MenuComment> findMenuComment(int mid) {
        return menuCommentDao.findMenuCommentByMid(mid);
    }

    @Override
    public List<MenuTag> findMenuTag(int mid) {
        return menuTagDao.findMenuTag(mid);
    }
}
