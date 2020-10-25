package com.mofish.controller;

/*
用来登录和注册
 */

import com.mofish.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("loginandregister")
public class LoginAndRegister {
    @Autowired
    UserInfoService userInfoService;

}
