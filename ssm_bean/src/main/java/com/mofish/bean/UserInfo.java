package com.mofish.bean;

import java.util.Date;

public class UserInfo {
    private int uid;        //用户id
    private String uname;   //用户名称
    private String upwd;    //用户密码
    private String ugender; //用户性别
    private String utel;    //用户电话
    private Date ubirth;    //用户出生日
    private Date urgtime;   //用户注册时间

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUgender() {
        return ugender;
    }

    public void setUgender(String ugender) {
        this.ugender = ugender;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

    public Date getUbrith() {
        return ubirth;
    }

    public void setUbrith(Date ubrith) {
        this.ubirth = ubrith;
    }

    public Date getUrgtime() {
        return urgtime;
    }

    public void setUrgtime(Date urgtime) {
        this.urgtime = urgtime;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ", ugender='" + ugender + '\'' +
                ", utel='" + utel + '\'' +
                ", ubrith=" + ubirth +
                ", urgtime=" + urgtime +
                '}';
    }
}
