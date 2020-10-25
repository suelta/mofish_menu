package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.bean.UserInfo;
import com.mofish.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class TestAjax {

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping("userLogin")
    @ResponseBody
    public String login(String upwd,String utel, HttpServletRequest request) {
        System.out.println("=======================进来了");
        UserInfo userInfo = new UserInfo();
        userInfo.setUtel(utel);
        userInfo.setUpwd(upwd);
        Map map = new HashMap();
        // 取得session中的验证码

        //获取登录数据
        /*String addr = request.getRemoteAddr();
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateTime = sdf.format(date);
        // 取得登录的密码,然后对密码进行加密,再进行比较.
        //String password = Md5Util.GetMD5(user.getUserpwd());*/
//        String password = userInfo.getUserpwd();
//        //String password = user.getUserpwd();
//        User u = userService.login(user.getUsername(), password,dateTime,addr);
//        // 取得到对象之后,将用户存入session 中. 为了以后可能会使用到登录用户的数据.
//        request.getSession().setAttribute("currentUser", u);

        Boolean flag = userInfoService.doLogin(userInfo);
        UserInfo userInfo1 = userInfoService.dofindOneUser(userInfo);
        if (flag){
            request.getSession().setAttribute("userinfo",userInfo1);
            map.put("flag", "ok");
        } else{
            map.put("flag", "ng");
        }


        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }
}
