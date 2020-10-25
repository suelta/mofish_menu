package com.mofish.bean;

public class MenuMethod {
    private int mid;
    private String mmdesc;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMmdesc() {
        return mmdesc;
    }

    public void setMmdesc(String mmdesc) {
        this.mmdesc = mmdesc;
    }

    @Override
    public String toString() {
        return "MenuMethod{" +
                "mid=" + mid +
                ", mmdesc='" + mmdesc + '\'' +
                '}';
    }
}
