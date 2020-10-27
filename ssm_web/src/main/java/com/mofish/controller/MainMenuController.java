package com.mofish.controller;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.MenuTag;
import com.mofish.bean.UserInfo;
import com.mofish.service.CheckSameTagService;
import com.mofish.service.HomePage_MenufromUserService;
import com.mofish.service.PopularMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("mainmenu")
public class MainMenuController {
    @Autowired
    private PopularMenuService popularMenuService;

    @Autowired
    private CheckSameTagService checkSameTagService;

    @RequestMapping("getMainMenu.do")
    public ModelAndView getMainMenu(){

        List<MenuLike> popMenuLikeList = popularMenuService.PopularMenu();

        List<MenuInfo> popMenuInfoList = popularMenuService.findMenuInfo(popMenuLikeList);

        List<UserInfo> popUserInfoList = popularMenuService.findUpUser(popMenuInfoList);

        ModelAndView mv = new ModelAndView();
        mv.addObject("popMenuLikeList", popMenuLikeList);
        mv.addObject("popMenuInfoList", popMenuInfoList);
        mv.addObject("popUserInfoList", popUserInfoList);

        /*
        ----------------------------------------------------------------
         */
        MenuTag menuTag = new MenuTag();
        MenuInfo breakfast = new MenuInfo();
        MenuInfo lunch = new MenuInfo();
        MenuInfo dinner = new MenuInfo();
        MenuInfo midnight_snack = new MenuInfo();

        List<MenuInfo> DayMenuInfoList = new ArrayList<>();
        List<UserInfo> DayUserInfoList = new ArrayList<>();
        List<MenuLike> DayMenuLikeList = new ArrayList<>();

        /**
         * 推荐早餐
         */
        menuTag.setTcid(13);
        //获取mname
        List<MenuInfo> breakfastList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        int bound = breakfastList.size();
        Random random = new Random();
        int randNum = random.nextInt(bound);
        breakfast = breakfastList.get(randNum);
        //获取uname
        UserInfo breakUserInfo = checkSameTagService.findUserByUid(breakfast.getUid());
        //获取mlcount
        MenuLike breakMenuLike = checkSameTagService.findMlByMid(breakfast.getMid());
        DayMenuInfoList.add(breakfast);
        DayUserInfoList.add(breakUserInfo);
        DayMenuLikeList.add(breakMenuLike);

        /**
         * 推荐午餐
         */
        menuTag.setTcid(14);
        //获取mname
        List<MenuInfo> lunchList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        bound = lunchList.size() ;
        random = new Random();
        randNum = random.nextInt(bound);
        lunch = lunchList.get(randNum);
        //获取uname
        UserInfo lunchUserInfo = checkSameTagService.findUserByUid(lunch.getUid());
        //获取mlcount
        MenuLike lunchMenuLike = checkSameTagService.findMlByMid(lunch.getMid());
        DayMenuInfoList.add(lunch);
        DayUserInfoList.add(lunchUserInfo);
        DayMenuLikeList.add(lunchMenuLike);

        /**
         * 推荐晚餐
         */
        menuTag.setTcid(15);
        //获取mname
        List<MenuInfo> dinnerList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        bound = dinnerList.size();
        random = new Random();
        randNum = random.nextInt(bound);
        dinner = dinnerList.get(randNum);
        //获取uname
        UserInfo dinnerUserInfo = checkSameTagService.findUserByUid(dinner.getUid());
        //获取mlcount
        MenuLike dinnerMenuLike = checkSameTagService.findMlByMid(dinner.getMid());
        DayMenuInfoList.add(dinner);
        DayUserInfoList.add(dinnerUserInfo);
        DayMenuLikeList.add(dinnerMenuLike);

//        /**
//         * 推荐晚餐
//         */
//        menuTag.setTcid(16);
//        //获取mname
//        List<MenuInfo> midnight_snackList = checkSameTagService.getSameMenu(menuTag);
//        //随机选择一个
//        bound = midnight_snackList.size();
//        random = new Random();
//        randNum = random.nextInt(bound);
//        midnight_snack = midnight_snackList.get(randNum);
//        //获取uname
//        UserInfo midnight_snackUserInfo = checkSameTagService.findUserByUid(midnight_snack.getUid());
//        //获取mlcount
//        MenuLike midnight_snackMenuLike = checkSameTagService.findMlByMid(midnight_snack.getMid());
//        DayMenuInfoList.add(midnight_snack);
//        DayUserInfoList.add(midnight_snackUserInfo);
//        DayMenuLikeList.add(midnight_snackMenuLike);

        mv.addObject("dayMenuInfoList", DayMenuInfoList);
        mv.addObject("dayUserInfoList", DayUserInfoList);
        mv.addObject("dayMenuLikeList", DayMenuLikeList);

        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("getRecMenu.do")
    public ModelAndView getRecommendMenu(){
        MenuTag menuTag = new MenuTag();
        MenuInfo breakfast = new MenuInfo();
        MenuInfo lunch = new MenuInfo();
        MenuInfo dinner = new MenuInfo();
        MenuInfo midnight_snack = new MenuInfo();

        List<MenuInfo> menuInfoList = new ArrayList<>();
        List<UserInfo> userInfoList = new ArrayList<>();
        List<MenuLike> menuLikeList = new ArrayList<>();

        /**
         * 推荐早餐
         */
        menuTag.setTcid(13);
        //获取mname
        List<MenuInfo> breakfastList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        int bound = breakfastList.size() - 1;
        Random random = new Random();
        int randNum = random.nextInt(bound);
        breakfast = breakfastList.get(randNum);
        //获取uname
        UserInfo breakUserInfo = checkSameTagService.findUserByUid(breakfast.getUid());
        //获取mlcount
        MenuLike breakMenuLike = checkSameTagService.findMlByMid(breakfast.getMid());
        menuInfoList.add(breakfast);
        userInfoList.add(breakUserInfo);
        menuLikeList.add(breakMenuLike);

        /**
         * 推荐午餐
         */
        menuTag.setTcid(14);
        //获取mname
        List<MenuInfo> lunchList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        bound = lunchList.size() - 1;
        random = new Random();
        randNum = random.nextInt(bound);
        lunch = lunchList.get(randNum);
        //获取uname
        UserInfo lunchUserInfo = checkSameTagService.findUserByUid(lunch.getUid());
        //获取mlcount
        MenuLike lunchMenuLike = checkSameTagService.findMlByMid(lunch.getMid());
        menuInfoList.add(lunch);
        userInfoList.add(lunchUserInfo);
        menuLikeList.add(lunchMenuLike);

        /**
         * 推荐晚餐
         */
        menuTag.setTcid(15);
        //获取mname
        List<MenuInfo> dinnerList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        bound = dinnerList.size() - 1;
        random = new Random();
        randNum = random.nextInt(bound);
        dinner = dinnerList.get(randNum);
        //获取uname
        UserInfo dinnerUserInfo = checkSameTagService.findUserByUid(dinner.getUid());
        //获取mlcount
        MenuLike dinnerMenuLike = checkSameTagService.findMlByMid(dinner.getMid());
        menuInfoList.add(dinner);
        userInfoList.add(dinnerUserInfo);
        menuLikeList.add(dinnerMenuLike);

        /**
         * 推荐晚餐
         */
        menuTag.setTcid(16);
        //获取mname
        List<MenuInfo> midnight_snackList = checkSameTagService.getSameMenu(menuTag);
        //随机选择一个
        bound = midnight_snackList.size() - 1;
        random = new Random();
        randNum = random.nextInt(bound);
        midnight_snack = midnight_snackList.get(randNum);
        //获取uname
        UserInfo midnight_snackUserInfo = checkSameTagService.findUserByUid(midnight_snack.getUid());
        //获取mlcount
        MenuLike midnight_snackMenuLike = checkSameTagService.findMlByMid(midnight_snack.getMid());
        menuInfoList.add(midnight_snack);
        userInfoList.add(midnight_snackUserInfo);
        menuLikeList.add(midnight_snackMenuLike);



        ModelAndView mv = new ModelAndView();
        mv.addObject("menuInfoList", menuInfoList);
        mv.addObject("userInfoList", userInfoList);
        mv.addObject("menuLikeList", menuLikeList);
        mv.setViewName("#");
        return mv;
    }

}
