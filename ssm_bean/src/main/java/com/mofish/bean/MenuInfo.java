package com.mofish.bean;

import java.util.Date;

public class MenuInfo {
    private int mid;        //菜谱id
    private int uid;        //上传用户id
    private Date muptime;   //菜谱上传时间
    private String mname;   //菜谱名称

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getMuptime() {
        return muptime;
    }

    public void setMuptime(Date muptime) {
        this.muptime = muptime;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    @Override
    public String toString() {
        return "MenuInfo{" +
                "mid=" + mid +
                ", uid=" + uid +
                ", muptime=" + muptime +
                ", mname='" + mname + '\'' +
                '}';
    }
}
