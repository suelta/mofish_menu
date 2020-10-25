package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.service.MenuLikeService;
import com.mofish.service.UserLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("toaddlike")
public class AddUserandMenuLikeController {
    @Autowired
    private MenuLikeService menuLikeService;

    @Autowired
    private UserLikeService userLikeService;

    @RequestMapping("addLikeCount.do")
    @ResponseBody
    public String addLikeCount(int mid, int uid){
        menuLikeService.addMenuLikeCount(mid);
        userLikeService.addUserLikeCount(uid);

        Map map = new HashMap();
        String flag;
        flag = "ok";
        map.put("flag",flag);

        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }
}
