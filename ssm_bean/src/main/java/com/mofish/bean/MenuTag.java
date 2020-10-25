package com.mofish.bean;

public class MenuTag {
    private int mid;   //菜谱id
    private int tcid;   //标签类id

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getTcid() {
        return tcid;
    }

    public void setTcid(int tcid) {
        this.tcid = tcid;
    }

    @Override
    public String toString() {
        return "MenuTag{" +
                "mid=" + mid +
                ", tcid=" + tcid +
                '}';
    }
}
