package com.hfut.domain;

public class Boss {
	private String bossnum;
	private String bosspwd;
	private String bossname;
	
	
	public Boss() {
	}
	public String getBossnum() {
		return bossnum;
	}
	public void setBossnum(String bossnum) {
		this.bossnum = bossnum;
	}
	public String getBosspwd() {
		return bosspwd;
	}
	public void setBosspwd(String bosspwd) {
		this.bosspwd = bosspwd;
	}
	public String getBossname() {
		return bossname;
	}
	public void setBossname(String bossname) {
		this.bossname = bossname;
	}
	public Boss(String bossnum, String bosspwd, String bossname) {
		super();
		this.bossnum = bossnum;
		this.bosspwd = bosspwd;
		this.bossname = bossname;
	}
	
}
