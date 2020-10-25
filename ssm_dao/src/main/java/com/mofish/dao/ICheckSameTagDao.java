package com.mofish.dao;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuTag;

import java.util.List;

public interface ICheckSameTagDao {
    List<MenuInfo> checkTag(MenuTag menuTag);   //查询具有相同tcid的mid
}
