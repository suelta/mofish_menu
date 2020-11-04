package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.bean.*;
import com.mofish.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("addMenu")
public class AddMenuController {
    @Autowired
    private MenuInfoService menuInfoService;

    @Autowired
    private MenuLikeService menuLikeService;

    @Autowired
    private MenuDescService menuDescService;

    @Autowired
    private MenuMethodService menuMethodService;

    @Autowired
    private MenuTagService menuTagService;

    @RequestMapping("addMenu.do")
    @ResponseBody
    public String addMenu(HttpServletRequest request, String mddesc, String mname, String mdingredients, String mdexcipient,
                                String mmdesc, int[] menuTags){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userinfo");

        Map map = new HashMap();

        if(mname == ""|| mdingredients == ""|| mdexcipient == ""|| mmdesc == ""|| mddesc == ""){
            map.put("flag", "nulltext");
            // 将map转换为json给前台
            Gson gson = new Gson();
            String str = gson.toJson(map);
            return str;
        }
        if(menuTags == null){
            map.put("flag", "nulltag");
            // 将map转换为json给前台
            Gson gson = new Gson();
            String str = gson.toJson(map);
            return str;
        }

        //插入menuinfo
        MenuInfo menuInfo = new MenuInfo();
        menuInfo.setUid(userInfo.getUid());
        menuInfo.setMname(mname);
        menuInfoService.addMenuInfo(menuInfo);

        menuInfo = menuInfoService.findMenuInfoByMaxMid();
        menuInfo.setUid(menuInfo.getUid() + 1);

        //插入menudesc
        MenuDesc menuDesc = new MenuDesc();
        menuDesc.setMid(menuInfo.getMid());
        menuDesc.setMddesc(mddesc);
        menuDesc.setMdingredients(mdingredients);
        menuDesc.setMdexcipient(mdexcipient);
        menuDescService.addMenuDesc(menuDesc);

        //插入menulike
            menuLikeService.addMenuLike(menuInfo.getMid());

        //menumethod
        MenuMethod menuMethod = new MenuMethod();
        menuMethod.setMid(menuInfo.getMid());
        menuMethod.setMmdesc(mmdesc);
        menuMethodService.addMenuMethod(menuMethod);

        //menutag
        MenuTag menuTag = new MenuTag();
        menuTag.setMid(menuInfo.getMid());
        for(int i = 0; i<menuTags.length; i++){
            menuTag.setTcid(menuTags[i]);
            menuTagService.addMenuTag(menuTag);
        }

        System.out.println("增加菜谱图片ing");
        if(request.getSession().getAttribute("newmid")!=null){
            request.getSession().removeAttribute("newmid");
            request.getSession().setAttribute("newmid",menuInfo.getMid());
        }else{
            request.getSession().setAttribute("newmid",menuInfo.getMid());
        }

        map.put("flag", "ok");

        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;

    }
}
