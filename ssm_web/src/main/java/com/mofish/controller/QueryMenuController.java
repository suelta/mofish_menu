package com.mofish.controller;

import com.mofish.bean.*;
import com.mofish.service.MenuInfoService;
import com.mofish.service.QueryMenuService;
import com.mofish.service.TagClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("querymenu")
public class QueryMenuController {
    @Autowired
    private QueryMenuService queryMenuService;
    @Autowired
    private MenuInfoService menuInfoService;

    @Autowired
    private TagClassService tagClassService;

    @RequestMapping("getdetailmenuinfo.do")
    public ModelAndView getDetailMenuInfo(int mid,int uid){


        List<MenuComment> menuComment = queryMenuService.findMenuComment(mid);
        MenuDesc menuDesc = queryMenuService.findMenuDesc(mid);
        MenuLike menuLike = queryMenuService.findMenuLike(mid);
        MenuMethod menuMethod = queryMenuService.findMenuMethod(mid);
        List<MenuTag> menuTag = queryMenuService.findMenuTag(mid);
        MenuInfo menuInfo = menuInfoService.findMenuInfoByMid(mid);
        UserInfo userInfo = menuInfoService.findUserInfoByUid(uid);

        //搜索标签
        List<TagClass> tagList = new ArrayList<>();
        for(MenuTag tag:menuTag){
            tagList.add(tagClassService.findTagByTcid(tag.getTcid()));
        }

        ModelAndView mv = new ModelAndView();
        mv.addObject("menuconmment",menuComment);
        mv.addObject("menudesc",menuDesc);
        mv.addObject("menumethod",menuMethod);
        mv.addObject("menulike",menuLike);
        mv.addObject("tagList",tagList);
        mv.addObject("menuinfo",menuInfo);
        mv.addObject("userinfo",userInfo);
//        mv.addObject("menuinfo",menuInfo);
        mv.setViewName("detailmenuinfo");
        return mv;
    }
}
