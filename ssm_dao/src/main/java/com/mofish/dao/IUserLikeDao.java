package com.mofish.dao;

import com.mofish.bean.UserLike;

public interface IUserLikeDao {
    UserLike getUserLike(int uid);         //获得用户点赞数
    int updateUserLike(UserLike userLike);           //更新用户点赞数
    int addUserLike(int uid);                   //新增一条点赞记录
    int deleteUserLike(UserLike userLike);                //删除一条点赞记录
}
