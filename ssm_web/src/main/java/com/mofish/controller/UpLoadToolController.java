package com.mofish.controller;

import com.google.gson.Gson;
import com.mofish.bean.*;
import com.mofish.service.Impl.UploadTool;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("uploadtool")
public class UpLoadToolController {

    @RequestMapping(value="/upload.do",method= RequestMethod.GET)
    public String upload(@ModelAttribute("userDto")UserDto userDto){
        MultipartFile multipartFile = userDto.getMultipartFile();
        String name = UploadTool.uploadImage(multipartFile,1,1);
        return "test1";
    }

    @RequestMapping(value = "/addReport", method = RequestMethod.POST)
    public ModelAndView addReport(HttpSession session, @RequestParam(value = "attachs", required = false) MultipartFile[] attachs, HttpServletRequest request,
                                  HttpServletResponse response) {
        System.out.println( request.getSession().getServletContext().getRealPath("../../"));
        int mid = (int) request.getSession().getAttribute("newmid");
        // 定义上传文件的路径
        String fileName;
        // 定义文件保存的位置
        String path1 = request.getSession().getServletContext().getRealPath("");

        File file =new File(path1);
        String str =file.getParent();
        file = new File(str);
        str = file.getParent();
        System.out.println(str);
        String path = str+"\\src\\main\\webapp\\assets\\data\\"+mid+"\\";  //(2)

//        String path=realPath;
//        String path = request.getSession().getServletContext().getRealPath("\\src\\main\\webapp\\assets\\data\\test");
        // 循环读取文件信息
        String path2 = str+"\\target\\ssm_web\\assets\\data\\"+mid+"\\";
        System.out.println("===================================================="+path2);
        for (int i = 0; i < attachs.length; i++) {
            MultipartFile attach = attachs[i];
            if (!attach.isEmpty()) {// 判断文件是否为空
                fileName = upload(path, attach,i);
//                upload(path2, attach,i); //上传到target里面
            }
        }
//        Integer count = reportService.addReport(report);
//        if (count > 0) {
//            try {
//                response.getWriter().write("<script>alert('新增成功！');location.href='"+ request.getServletContext().getContextPath() + "/findAllReport.action';</script>");
//            } catch (IOException e) {
//            }
//        } else {
//            try {
//                response.getWriter().write("<script>alert('新增失败！');location.href='"+ request.getServletContext().getContextPath() + "/findAllReport.action';</script>");
//            } catch (IOException e) {
//            }
//        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/mainmenu/getMainMenu.do");
        return modelAndView;
    }
    /**
     * 上传
     * @Title: upload
     * @Description: TODO
     * @param @param path
     * @param @param attach
     * @param @return
     * @return String
     * @throws
     */
    private String upload(String path, MultipartFile attach,int i) {

        String fileName;
        File file;
        //获取文件拓展名
//        fileName = attach.getOriginalFilename();
        //新的文件名
//        fileName = System.currentTimeMillis()+fileName;
        if(i == 0){
            fileName = "main.jpg";
        }else{
            fileName = "meunphotosteps"+i+".jpg";
        }
        System.out.println(fileName);
        //封装文件保存位置的全路径
        file=new File(path, fileName);
        if (!file.exists()) {
            file.mkdirs();
        }
        //上传
        try {
            attach.transferTo(file);
        } catch (IllegalStateException | IOException e) {
            System.out.println("上传失败");
        }
        return fileName;
    }


}


