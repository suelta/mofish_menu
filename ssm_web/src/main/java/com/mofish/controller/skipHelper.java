package com.mofish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("skip")
public class skipHelper {

    @RequestMapping("/tologinandregister.do")
    public String tologinandregister(){
        return "login-register";
    }

    @RequestMapping("/tomain.do")
    public String tomain(){
        return "main";
    }

    @RequestMapping("/tocontactus.do")
    public String tocontactus(){
        return "contactus";
    }

    @RequestMapping("/toaboutus.do")
    public String toaboutus(){
        return "aboutus";
    }

    @RequestMapping("/touploadmenu.do")
    public String touploadmenu(){return "uploadmenu";}
}
