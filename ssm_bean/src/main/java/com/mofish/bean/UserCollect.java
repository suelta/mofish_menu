package com.mofish.bean;

/**
 * 用户收藏的菜谱id
 */
public class UserCollect {
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
        return "UserCollect{" +
                "uid=" + uid +
                ", mid=" + mid +
                '}';
    }
}
