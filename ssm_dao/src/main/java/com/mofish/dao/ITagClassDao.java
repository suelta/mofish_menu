package com.mofish.dao;

import com.mofish.bean.TagClass;

public interface ITagClassDao {
    TagClass findTagByTcid(int tcid);
}
