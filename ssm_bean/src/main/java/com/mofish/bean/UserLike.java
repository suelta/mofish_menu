package com.mofish.bean;

public class UserLike {
    private int uid;
    private int ulcount;    //用户收到的点赞数

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getUlcount() {
        return ulcount;
    }

    public void setUlcount(int ulcount) {
        this.ulcount = ulcount;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "uid=" + uid +
                ", ulcount=" + ulcount +
                '}';
    }
}
