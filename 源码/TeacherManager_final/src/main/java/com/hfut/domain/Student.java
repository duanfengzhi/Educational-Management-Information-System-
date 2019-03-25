package com.hfut.domain;

public class Student {
	private String stuno;
	private String stupwd;
	private String stuname;
	private String stusex;
	private String stuintime;
	private String stuclass;
	private String stuaddr;
	private String stutel;
	private String stuemail;
	
	public Student() {
	}
	@Override
	public String toString() {
		return "Student [stuno=" + stuno + ", stupwd=" + stupwd + ", stuname=" + stuname + ", stusex=" + stusex
				+ ", stuintime=" + stuintime + ", stuclass=" + stuclass + ", stuaddr=" + stuaddr + ", stutel=" + stutel
				+ ", stuemail=" + stuemail + "]";
	}
	public Student(String stuno, String stupwd, String stuname, String stusex, String stuintime, String stuclass,
			String stuaddr, String stutel, String stuemail) {
		super();
		this.stuno = stuno;
		this.stupwd = stupwd;
		this.stuname = stuname;
		this.stusex = stusex;
		this.stuintime = stuintime;
		this.stuclass = stuclass;
		this.stuaddr = stuaddr;
		this.stutel = stutel;
		this.stuemail = stuemail;
	}
	public String getStuno() {
		return stuno;
	}
	public void setStuno(String stuno) {
		this.stuno = stuno;
	}
	public String getStupwd() {
		return stupwd;
	}
	public void setStupwd(String stupwd) {
		this.stupwd = stupwd;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public String getStusex() {
		return stusex;
	}
	public void setStusex(String stusex) {
		this.stusex = stusex;
	}
	public String getStuintime() {
		return stuintime;
	}
	public void setStuintime(String stuintime) {
		this.stuintime = stuintime;
	}
	public String getStuclass() {
		return stuclass;
	}
	public void setStuclass(String stuclass) {
		this.stuclass = stuclass;
	}
	public String getStuaddr() {
		return stuaddr;
	}
	public void setStuaddr(String stuaddr) {
		this.stuaddr = stuaddr;
	}
	public String getStutel() {
		return stutel;
	}
	public void setStutel(String stutel) {
		this.stutel = stutel;
	}
	public String getStuemail() {
		return stuemail;
	}
	public void setStuemail(String stuemail) {
		this.stuemail = stuemail;
	}
	
}
