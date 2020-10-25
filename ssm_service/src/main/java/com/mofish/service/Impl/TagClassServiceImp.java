package com.mofish.service.Impl;

import com.mofish.bean.TagClass;
import com.mofish.dao.ITagClassDao;
import com.mofish.service.TagClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagClassServiceImp implements TagClassService {
    @Autowired
    ITagClassDao tagClassDao;

    @Override
    public TagClass findTagByTcid(int tcid) {
        return tagClassDao.findTagByTcid(tcid);
    }
}
