package com.mofish.bean;

public class MenuLike {
    private int mid;
    private int mlcount;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getMlcount() {
        return mlcount;
    }

    public void setMlcount(int mlcount) {
        this.mlcount = mlcount;
    }

    @Override
    public String toString() {
        return "MenuLike{" +
                "mid=" + mid +
                ", mlcount=" + mlcount +
                '}';
    }
}
