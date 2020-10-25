package com.mofish.controller;

import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;
import com.mofish.service.PopularMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("popularmenu")
public class PopularMenuController {
    @Autowired
    private PopularMenuService popularMenuService;

    @RequestMapping("getPopMenu.do")
    public ModelAndView getPopMenu(){

        List<MenuLike> menuLikeList = popularMenuService.PopularMenu();
        System.out.println(menuLikeList.toString());

        List<MenuInfo> menuInfoList = popularMenuService.findMenuInfo(menuLikeList);
        System.out.println(menuInfoList.toString());

        List<UserInfo> userInfoList = popularMenuService.findUpUser(menuInfoList);
        System.out.println(userInfoList.toString());

        ModelAndView mv = new ModelAndView();
        System.out.println(menuInfoList.size()+"====="+userInfoList.size());
        mv.addObject("menuLikeList", menuLikeList);
        mv.addObject("menuInfoList", menuInfoList);
        mv.addObject("userInfoList", userInfoList);
        mv.setViewName("main");
        return mv;
    }
}
