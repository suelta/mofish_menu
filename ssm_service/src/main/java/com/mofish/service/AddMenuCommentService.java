package com.mofish.service;

import com.mofish.bean.MenuComment;

public interface AddMenuCommentService {
    int addMenuComment(MenuComment menuComment);
    int deleteMenuComment(int mid);
}
