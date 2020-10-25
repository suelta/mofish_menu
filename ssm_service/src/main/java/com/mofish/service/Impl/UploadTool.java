package com.mofish.service.Impl;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class UploadTool{
    public static String uploadImage(MultipartFile imageFile,int mid,int photoname){
            String newImageName = null;
            if (!imageFile.isEmpty()) {    //(1)
//                G:\中软培训\菜谱项目\program\1\mofish_menu\ssm_web\src\main\webapp\assets\data
                String path = System.getProperty("user.dir");
//                String realPath = path+"\\ssm_web\\src\\main\\webapp\\assets\\data\\"+mid;  //(2)
////                File file = new File("G:\\1","aaa");

                String realPath = path+"\\ssm_web\\src\\main\\webapp\\assets\\data\\test";
                String originalName = imageFile.getOriginalFilename();  //(3)
                String uuidName = UUID.randomUUID().toString();  //(4)
                newImageName = uuidName + originalName.substring(originalName.lastIndexOf("."));  //(4)
                File file = new File(realPath,newImageName);  //(5)
                //获取父目录
                File fileParent = file.getParentFile();
                if (!fileParent.exists()) {
                    fileParent.mkdirs();
                }

                try {
                    imageFile.transferTo(file);  //(6)
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        return newImageName;  //(7)
    }



}

