package com.mofish.bean;

/**
 * 标签类
 */
public class TagClass {
    private int tcid;       //标签id
    private String tcdisc;  //标签描述
    private String tcdetail;

    @Override
    public String toString() {
        return "TagClass{" +
                "tcid=" + tcid +
                ", tcdisc='" + tcdisc + '\'' +
                ", tcdeteil='" + tcdetail + '\'' +
                '}';
    }

    public String getTcdetail() {
        return tcdetail;
    }

    public void setTcdetail(String tcdetail) {
        this.tcdetail = tcdetail;
    }

    public int getTcid() {
        return tcid;
    }

    public void setTcid(int tcid) {
        this.tcid = tcid;
    }

    public String getTcdisc() {
        return tcdisc;
    }

    public void setTcdisc(String tcdisc) {
        this.tcdisc = tcdisc;
    }


}
