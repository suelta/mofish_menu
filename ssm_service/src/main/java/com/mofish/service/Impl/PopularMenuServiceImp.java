package com.mofish.service.Impl;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;
import com.mofish.dao.IMenuInfoDao;
import com.mofish.dao.IMenuLikeDao;
import com.mofish.dao.IUserInfoDao;
import com.mofish.service.PopularMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
public class PopularMenuServiceImp implements PopularMenuService {
    @Autowired
    private IMenuLikeDao menuLikeDao;

    @Autowired
    private IUserInfoDao userInfoDao;

    @Autowired
    private IMenuInfoDao menuInfoDao;

    @Override
    public List<MenuLike> PopularMenu() {

        List<MenuLike> menuLikeList = new ArrayList<>();
        menuLikeList = menuLikeDao.getPopularMenu(50);

        int bound=menuLikeList.size();
        Random random = new Random();
        int PopNum = 8;
        int a[] = new int[PopNum];
        a[0] = random.nextInt(bound);
        for (int i = 1; i < a.length; i++) {
            a[i] = random.nextInt(bound);
            for (int j = 0; j < i; j++) {
                if (a[i] == a[j]) {//如果重复，退回去重新生成随机数
                    i--;
                }
            }
        }
        List<MenuLike> randMenu = new ArrayList<>();//获取随机菜谱
        for(int i = 0; i < a.length; i ++){
            randMenu.add(menuLikeList.get(a[i]));
        }

        return randMenu;
    }

    @Override
    public List<MenuInfo> findMenuInfo(List<MenuLike> menuLikeList) {
        List<MenuInfo> menuInfoList = new ArrayList<>();
        for(MenuLike menuLike:menuLikeList){
            menuInfoList.add(menuInfoDao.findMenuInfoByMid(menuLike.getMid()));
        }
        return menuInfoList;
    }

    @Override
    public List<UserInfo> findUpUser(List<MenuInfo> menuInfoList) {
        List<UserInfo> userInfoList = new ArrayList<>();
        for(MenuInfo menuInfo:menuInfoList){
            userInfoList.add(userInfoDao.findUserByUid(menuInfo.getUid()));
        }
        return userInfoList;
    }

}

