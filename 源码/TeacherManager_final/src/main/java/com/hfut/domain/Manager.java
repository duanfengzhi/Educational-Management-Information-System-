package com.hfut.domain;

public class Manager {
	private String adno;
	private String adpwd;
	private String adname;
	private String ademail;
	private String adtel;
	private int level;
	
	
	public Manager() {
	}
	
	
	public Manager(String adno, String adpwd, String adname, String ademail, String adtel, int level) {
		super();
		this.adno = adno;
		this.adpwd = adpwd;
		this.adname = adname;
		this.ademail = ademail;
		this.adtel = adtel;
		this.level = level;
	}
	public String getAdno() {
		return adno;
	}
	public void setAdno(String adno) {
		this.adno = adno;
	}
	public String getAdpwd() {
		return adpwd;
	}
	public void setAdpwd(String adpwd) {
		this.adpwd = adpwd;
	}
	public String getAdname() {
		return adname;
	}
	public void setAdname(String adname) {
		this.adname = adname;
	}
	public String getAdemail() {
		return ademail;
	}
	public void setAdemail(String ademail) {
		this.ademail = ademail;
	}
	public String getAdtel() {
		return adtel;
	}
	public void setAdtel(String adtel) {
		this.adtel = adtel;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
	
}
