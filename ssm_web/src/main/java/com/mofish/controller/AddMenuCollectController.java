package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.bean.UserCollect;
import com.mofish.service.UserCollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.xml.registry.infomodel.User;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("toaddcollect")
public class AddMenuCollectController {
    @Autowired
    private UserCollectService userCollectService;

    @RequestMapping("addcollect.do")
    @ResponseBody
    public String addCollect(HttpServletRequest request,int uid, int mid){

        System.out.println(uid+"------------"+mid);

        Map map = new HashMap();
        if(request.getSession().getAttribute("userinfo")==null){
            map.put("flag", "unlogin");
            Gson gson = new Gson();
            String str = gson.toJson(map);
            return str;
        }

        UserCollect userCollect = new UserCollect();
        userCollect.setUid(uid);
        userCollect.setMid(mid);


        UserCollect iscollect = new UserCollect();
        iscollect = userCollectService.isUserCollect(userCollect);
        if(iscollect == null){
            userCollectService.addUserCollect(userCollect);
            map.put("flag", "success");
        }
        else map.put("flag", "failure");


        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }

    @RequestMapping("addcollectwithoutreturn.do")
    @ResponseBody
    public void addCollectwithoutreturn(HttpServletRequest request,int uid, int mid){

        System.out.println(uid+"------------"+mid);

        Map map = new HashMap();
        if(request.getSession().getAttribute("userinfo")==null){
            return;
        }

        UserCollect userCollect = new UserCollect();
        userCollect.setUid(uid);
        userCollect.setMid(mid);


        UserCollect iscollect = new UserCollect();
        iscollect = userCollectService.isUserCollect(userCollect);
        if(iscollect == null){
            userCollectService.addUserCollect(userCollect);
        }
        return;
    }
}
