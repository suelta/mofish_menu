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
import sun.util.locale.provider.FallbackLocaleProviderAdapter;

import javax.jws.WebParam;
import javax.mail.Flags;
import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.Soundbank;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Pattern;

@Controller
@RequestMapping("user")
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private HomePage_UserInfoService homePage_userInfoService;

    @Autowired
    private HomePage_MenufromUserService homePage_menufromUserService;

    @Autowired
    private UserLikeService userLikeService;

    @Autowired
    private UserCollectService userCollectService;

    @Autowired
    private PopularMenuService popularMenuService;

    //用户登录
    @RequestMapping("login.do")
    public ModelAndView doLogin(UserInfo userInfo, HttpServletRequest request) {

        System.out.println(userInfo.toString());

        Boolean flag = userInfoService.doLogin(userInfo);
        UserInfo userInfo1 = userInfoService.dofindOneUser(userInfo);
        ModelAndView mv = new ModelAndView();
        if (flag){
            request.getSession().setAttribute("userinfo",userInfo1);
            mv.setViewName("redirect:/mainmenu/getMainMenu.do"); //登录成功界面
        } else
            mv.setViewName("test1"); //登录失败界面
        return mv;
    }

    @RequestMapping("userLogin.do")
    @ResponseBody
    public String login(UserInfo userInfo, HttpServletRequest request) {
        Map map = new HashMap();
        // 取得session中的验证码

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

    //转入注册界面
    @RequestMapping("toRegister.do")
    public String toRegister() {

        return "#";
    }
    //保存注册信息
    @RequestMapping("register.do")
    @ResponseBody
    public String register(UserInfo userInfo,String birth) {
        Date date = null;
        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            date = sdf.parse(birth);
        }
        catch (ParseException e)
        {
            System.out.println(e.getMessage());
        }
        System.out.println(date.toString());
        userInfo.setUbrith(date);

        Map map = new HashMap();
        int flag;
        //判断字符串是否是电话号码的格式
        Pattern pattern = Pattern.compile("^[0-9]*$");
        if(pattern.matcher(userInfo.getUtel()).matches()){//是纯数字
            flag = userInfoService.doRegister(userInfo);
            if(flag == 1){
                userInfo = userInfoService.dofindOneUser(userInfo);
                userLikeService.addUserLike(userInfo.getUid());
                map.put("flag", "ok");  //注册成功
            }
            else if(flag == 0){
                map.put("flag", "exist");  //已存在的电话号码
            }
        }else{
            map.put("flag", "notdig");     //非纯数字
        }

        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }

    //转入修改密码界面
    @RequestMapping("toUpdataPwd.do")
    public String toUpdataPwd() {

        return "#";
    }
    //密码更新
    @RequestMapping("UpdataPwd.do")
    public String doUpdataPwd(UserInfo userInfo,String cpassword){
        Boolean flag=userInfoService.doUpdataPwd(userInfo,cpassword);
        if(flag)
            return "#";     //修改成功，跳到登录界面
        else return "#";    //修改失败，刷新回到修改页面

    }

    //转入修改用户信息界面
    @RequestMapping("toUpdataUser.do")
    public ModelAndView toUpdataUser(HttpServletRequest request) {
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userinfo");
        ModelAndView mv = new ModelAndView();
        mv.addObject("userinfo",userInfo);
        mv.setViewName("alterpersoninfo");
        return mv;
    }
    //用户信息更新
    @RequestMapping("UpdataUser.do")
    @ResponseBody
    public String doUpdateUser(UserInfo userInfo,String birth,HttpServletRequest request) {

        Map map = new HashMap();
        Boolean flag;

        System.out.println("============================"+userInfo.toString());

        //输入框是否为空
        if(userInfo.getUname() == ""|| userInfo.getUpwd() == ""|| userInfo.getUtel() == ""){    // || userInfo.getUbrith() == null
            map.put("flag", "null");
            // 将map转换为json给前台
            Gson gson = new Gson();
            String str = gson.toJson(map);
            return str;
        }

        Date date = null;
        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            date = sdf.parse(birth);
        }
        catch (ParseException e)
        {
            System.out.println(e.getMessage());
        }
        System.out.println(date.toString());
        userInfo.setUbrith(date);

        //判断字符串是否是电话号码的格式
        Pattern pattern = Pattern.compile("^[0-9]*$");
        if(pattern.matcher(userInfo.getUtel()).matches()){//是纯数字
            flag = userInfoService.doUpdataUser(userInfo);
            if(flag == true){
                System.out.println(userInfo.toString()+"     =================");
                userInfo.setUrgtime(((UserInfo)request.getSession().getAttribute("userinfo")).getUrgtime());
                request.getSession().removeAttribute("userinfo");
                request.getSession().setAttribute("userinfo",userInfo);
                map.put("flag", "ok");  //注册成功
            }
            else if(flag == false){
                map.put("flag", "exist");  //已存在的电话号码
            }
        }else{
            map.put("flag", "notdig");     //非纯数字
        }

        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }

    //我的主页
    @RequestMapping("homepage.do")
    public ModelAndView doHomePage(HttpServletRequest request){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userinfo");
        UserLike userLike = homePage_userInfoService.findUserLike(userInfo.getUid());
        List<MenuInfo> menuInfoList = new ArrayList<>();
        List<MenuLike> menuLikeList = new ArrayList<>();
        menuInfoList = homePage_menufromUserService.findMenufromUser(userInfo.getUid());
        menuLikeList = homePage_menufromUserService.findMenuLikeCount(menuInfoList);

        System.out.println(menuInfoList.size()+"=================");

        ModelAndView mv = new ModelAndView();
        mv.addObject("menuInfoList", menuInfoList);
        mv.addObject("menuLikeList", menuLikeList);
        mv.addObject("userinfo",userInfo);
        mv.addObject("userlike",userLike);
        mv.setViewName("personinfo");
        return mv;
    }

    //查看收藏页面
    @RequestMapping("homepagecollect.do")
    public ModelAndView findusercollect(HttpServletRequest request){

        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userinfo");
        UserLike userLike = homePage_userInfoService.findUserLike(userInfo.getUid());
        List<MenuInfo> menuInfoList = userCollectService.findMenuInfo(userInfo.getUid());
        List<MenuLike> menuLikeList = userCollectService.findMenuLike(menuInfoList);
        List<UserInfo> collectUserInfoList = popularMenuService.findUpUser(menuInfoList);

        ModelAndView mv = new ModelAndView();
        mv.addObject("userinfo", userInfo);
        mv.addObject("userlike", userLike);
        mv.addObject("menuInfoList", menuInfoList);
        mv.addObject("menuLikeList", menuLikeList);
        mv.addObject("collectUserInfoList",collectUserInfoList);
        mv.setViewName("personinfocollect");
        return mv;

    }

    @RequestMapping("deleteUserCollect.do")
    @ResponseBody
    public String deleteUserCollect(int uid, int mid){

        UserCollect userCollect = new UserCollect();
        userCollect.setUid(uid);
        userCollect.setMid(mid);
        int flag = userCollectService.deleteUserCollect(userCollect);

        if(flag == 0){
            Map map = new HashMap();
            map.put("flag", "false");

            // 将map转换为json给前台
            Gson gson = new Gson();
            String str = gson.toJson(map);
            return str;
        }
        Map map = new HashMap();
        map.put("flag", "success");

        // 将map转换为json给前台
        Gson gson = new Gson();
        String str = gson.toJson(map);
        return str;
    }

    @RequestMapping("personlogout.do")
    public ModelAndView personLogout(HttpServletRequest request){
        request.getSession().removeAttribute("userinfo");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/mainmenu/getMainMenu.do");
        return mv;
    }
}
