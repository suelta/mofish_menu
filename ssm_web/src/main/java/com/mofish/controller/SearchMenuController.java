package com.mofish.controller;

import com.github.pagehelper.PageInfo;
import com.mofish.bean.MenuInfo;
import com.mofish.bean.MenuLike;
import com.mofish.bean.UserInfo;
import com.mofish.service.SearchMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

@Controller
@RequestMapping("search")
public class SearchMenuController {
    @Autowired
    SearchMenuService searchMenuService;

    @RequestMapping("searchMenu.do")
    public ModelAndView searchMenu(@RequestParam(defaultValue = "") String mname, @RequestParam(defaultValue = "1") int page,
                                   @RequestParam(defaultValue = "8")int size){

        try {
            mname = URLDecoder.decode(mname,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        //查询菜谱
        List<MenuInfo> menuInfoList = searchMenuService.SearchMenuByMname(mname, page, size);
        //查询上传用户
        List<UserInfo> userInfoList = searchMenuService.SearchUserByUid(menuInfoList);
        //查询菜谱点赞数
        List<MenuLike> menuLikeList = searchMenuService.SearchMenuLikeByMid(menuInfoList);

        /*
        分页
         */
        PageInfo menuInfoPage = new PageInfo(menuInfoList);
        PageInfo userInfoPage = new PageInfo(userInfoList);
        PageInfo menuLikePage = new PageInfo(menuLikeList);


        ModelAndView mv = new ModelAndView();
        mv.addObject("menuInfoPage", menuInfoPage);
        mv.addObject("userInfoPage", userInfoPage);
        mv.addObject("menuLikePage", menuLikePage);
        mv.addObject("searchString", mname);
        mv.addObject("menuInfoList", menuInfoList);
        mv.setViewName("searchmenu");
        return mv;

    }


}
