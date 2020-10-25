package com.mofish.bean;

/**
 * 用户自己的菜谱
 */
public class MenufromUser {
    private int uid;
    private int mid;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    @Override
    public String toString() {
        return "MenufromUser{" +
                "uid=" + uid +
                ", mid=" + mid +
                '}';
    }
}
