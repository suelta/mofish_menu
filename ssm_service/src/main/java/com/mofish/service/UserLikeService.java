package com.mofish.service;

import com.mofish.bean.UserLike;

public interface UserLikeService {
    int addUserLikeCount(int uid);
    int addUserLike(int uid);
}
