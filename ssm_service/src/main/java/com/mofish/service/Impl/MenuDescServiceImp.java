package com.mofish.service.Impl;

import com.mofish.bean.MenuDesc;
import com.mofish.dao.IMenuDescDao;
import com.mofish.service.MenuDescService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuDescServiceImp implements MenuDescService {
    @Autowired
    private IMenuDescDao menuDescDao;

    @Override
    public int addMenuDesc(MenuDesc menuDesc) {
        return menuDescDao.addMenuDesc(menuDesc);
    }
}
