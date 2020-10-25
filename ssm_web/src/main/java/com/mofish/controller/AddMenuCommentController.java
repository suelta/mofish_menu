package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.bean.MenuComment;
import com.mofish.service.AddMenuCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("toaddmenucomment")
public class AddMenuCommentController {
    @Autowired
    private AddMenuCommentService menuCommentService;

    @RequestMapping("addMenuComment.do")
    @ResponseBody
    public String addMenuComment(MenuComment menuComment){

        System.out.println(menuComment.toString());

        //添加一条评论
        Date date = new Date(System.currentTimeMillis());
        menuComment.setMctime(date);
        menuCommentService.addMenuComment(menuComment);

        Map map = new HashMap();
        map.put("flag", "ok");
        map.put("comment",menuComment.getMctext());
        map.put("uid1",menuComment.getUid());
        map.put("mid1",menuComment.getMid());
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }

    @RequestMapping("deleteMenuComment.do")
    public ModelAndView deleteMenuComment(int mid){
        menuCommentService.deleteMenuComment(mid);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("#");
        return mv;
    }

}
