package com.mofish.service.Impl;

import com.mofish.bean.MenuTag;
import com.mofish.dao.IMenuTagDao;
import com.mofish.service.MenuTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuTagServiceImp implements MenuTagService {
    @Autowired
    private IMenuTagDao menuTagDao;

    @Override
    public int addMenuTag(MenuTag menuTag) {
        return menuTagDao.addMenuTag(menuTag);
    }
}
