package com.mofish.service.Impl;

import com.mofish.bean.MenuMethod;
import com.mofish.dao.IMenuMethodDao;
import com.mofish.service.MenuMethodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuMethodServiceImp implements MenuMethodService {
    @Autowired
    private IMenuMethodDao menuMethodDao;

    @Override
    public int addMenuMethod(MenuMethod menuMethod) {
        return menuMethodDao.addMenuMethod(menuMethod);
    }
}
