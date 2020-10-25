package com.mofish.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import java.util.regex.Pattern;

public class test1 {
    public static void main(String[] args) {
        String str="第1步\n" +
                "首先将大米洗净，侵泡一晚\n" +
                "将米泡好的大米洗净后加一斤水，用破壁机或者豆浆机打成细腻的米糊，注意过程中不能加热。\n" +
                "meunphotosteps1\n" +
                "meunphotosteps2\n" +
                "第2步\n" +
                "将打好的米糊倒在干净无油的大盆里，加入食用碱搅拌均匀备用。\n" +
                "在等待搅打米糊的时间里，取一口干净无油的锅，锅里放5斤水烧开，烧开后可以先舀一些放在旁边，毕竟每家吃大米品种不一样，需要的水有一点出入。水开后将一半的水慢慢倒入米糊里（加开水之前记都先把米糊搅拌几下，毕竟米糊会沉淀），顺着一个方向一边倒一边搅拌，搅拌均匀后，再把迷糊倒入慢慢大锅里，同样边倒边顺着一个方向搅拌。刚开始一定要不停得搅拌不然会起坨，如果感觉太干就把事先舀出来的水再加进去。火不要太大，煮的过程中也一定要多搅拌，应为锅底容易糊，煮至锅里大气泡消失，冒小泡泡就可以了。\n" +
                "meunphotosteps3\n" +
                "meunphotosteps4\n" +
                "第3步\n" +
                "将煮好的米糊倒入事先准备的盘子里，自然放凉后放在冰水里侵泡一会然后捞出放入红糖水就可以吃了。\n" +
                "如果给很小的孩子吃，可以用温水或者凉开水侵泡\n" +
                "meunphotosteps5\n" +
                "meunphotosteps6\n" +
                "第4步\n" +
                "成品，浇上红糖就可以吃啦\n" +
                "meunphotosteps7";
        String[] strings = str.split("\n");
        for(String splitstr:strings){
            System.out.println(splitstr);
        }

        int bound = 100 - 1;
        Random random = new Random();
        int randNum = random.nextInt(bound);
        System.out.println(randNum);

        String str1 = "15613153y";
        Pattern pattern = Pattern.compile("^[0-9]*$");
        if(pattern.matcher(str1).matches()){
            System.out.println(str1+"是数字");
        }else{
            System.out.println(str1+"不是数字");
        }


        //获取当前项目路径
        String path = System.getProperty("user.dir");
        System.out.println(path);

        File file = new File("G:\\1","aaa");

        //获取父目录
        File fileParent = file.getParentFile();
//判断是否存在
        if (!fileParent.exists()) {
            fileParent.mkdirs();
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
