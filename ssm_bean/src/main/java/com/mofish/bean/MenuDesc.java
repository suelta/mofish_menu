package com.mofish.bean;

public class MenuDesc {
    private int mid;
    private String mdingredients;  //主食材
    private String mdexcipient;     //辅食材
    private String mddesc;          //菜谱简介

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMdingredients() {
        return mdingredients;
    }

    public void setMdingredients(String mdingredients) {
        this.mdingredients = mdingredients;
    }

    public String getMdexcipient() {
        return mdexcipient;
    }

    public void setMdexcipient(String mdexcipient) {
        this.mdexcipient = mdexcipient;
    }

    public String getMddesc() {
        return mddesc;
    }

    public void setMddesc(String mddesc) {
        this.mddesc = mddesc;
    }

    @Override
    public String toString() {
        return "MenuDesc{" +
                "mid=" + mid +
                ", mdingredients='" + mdingredients + '\'' +
                ", mdexcipient='" + mdexcipient + '\'' +
                ", mddesc='" + mddesc + '\'' +
                '}';
    }
}
