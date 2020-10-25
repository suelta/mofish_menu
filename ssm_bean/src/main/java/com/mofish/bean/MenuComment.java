package com.mofish.bean;

import java.util.Date;

public class MenuComment {
    private int mcid;
    private int mid;
    private int uid;
    private String  mctext;
    private Date mctime;

    public int getMcid() {
        return mcid;
    }

    public void setMcid(int mcid) {
        this.mcid = mcid;
    }

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

    public String getMctext() {
        return mctext;
    }

    public void setMctext(String mctext) {
        this.mctext = mctext;
    }

    public Date getMctime() {
        return mctime;
    }

    public void setMctime(Date mctime) {
        this.mctime = mctime;
    }

    @Override
    public String toString() {
        return "MenuComment{" +
                "mcid=" + mcid +
                ", mid=" + mid +
                ", uid=" + uid +
                ", mctext='" + mctext + '\'' +
                ", mctime=" + mctime +
                '}';
    }
}
