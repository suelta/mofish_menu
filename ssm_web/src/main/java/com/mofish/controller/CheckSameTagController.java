package com.mofish.controller;

import com.github.pagehelper.PageInfo;
import com.mofish.bean.*;
import com.mofish.service.CheckSameTagService;
import com.mofish.service.TagClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("checksametag")
public class CheckSameTagController {
    @Autowired
    private CheckSameTagService checkSameTagService;

    @Autowired
    private TagClassService tagClassService;

    @RequestMapping("getSameMenu.do")
    public ModelAndView getSameMenu(int tcid, @RequestParam(defaultValue = "1") int page,
                                    @RequestParam(defaultValue = "8")int size){
        MenuTag menuTag = new MenuTag();
        menuTag.setTcid(tcid);
        //标签详细描述
        TagClass tagClass = tagClassService.findTagByTcid(menuTag.getTcid());
        String tagDeteil = tagClass.getTcdetail();

        //获取相同标签的菜谱信息

        //获取mname
        List<MenuInfo> menuInfoList = checkSameTagService.getSameMenuPage(menuTag, page, size);
        //获取uname
        List<UserInfo> userInfoList = checkSameTagService.getUpUser(menuInfoList);
        //获取mlcount
        List<MenuLike> menuLikeList = checkSameTagService.getMenuLike(menuInfoList);

        System.out.println(menuInfoList.size());
        /*ModelMap modelMap = new ModelMap();
        modelMap.addAttribute("menuInfoList", menuInfoList);
        modelMap.addAttribute("userInfoList", userInfoList);
        modelMap.addAttribute("menuLikeList", menuLikeList);*/

        /*
        分页
         */
        PageInfo menuInfoPage = new PageInfo(menuInfoList);
        PageInfo userInfoPage = new PageInfo(userInfoList);
        PageInfo menuLikePage = new PageInfo(menuLikeList);


        ModelAndView mv = new ModelAndView();
        mv.addObject("tagClass", tagClass);
        mv.addObject("menuInfoPage", menuInfoPage);
        mv.addObject("userInfoPage", userInfoPage);
        mv.addObject("menuLikePage", menuLikePage);
        mv.setViewName("detailtagmenu");
        return mv;
    }


}
