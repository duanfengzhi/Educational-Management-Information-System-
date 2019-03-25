package com.hfut.domain;

public class FeedBack {
	private int fnum;		
	private String stuNum;		//反馈学生学号.
	private int type;            //反馈类型.
	private String claName;		//课程名字.
	private String teaName;		//老师名字.
	private String info;		//反馈信息.
	private int state;          //是否匿名.（0：匿名，1：不匿名）
	private java.sql.Timestamp sendTime;    //提交时间.
	private String status = "未审核";       //审核状态（未审核/未回复/已回复）
	private String picture;			
	private String recipient;       //接受者.
	private String reply;           //回复.
	
	public FeedBack() {}
	
	public int getFnum() {
		return fnum;
	}
	
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	
	public int getType() {
		return type;
	}
	
	public void setType(int type) {
		this.type = type;
	}
	
	public String getStuNum() {
		return stuNum;
	}
	
	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}
	
	public String getInfo() {
		return info;
	}
	
	public void setInfo(String info) {
		this.info = info;
	}
	
	public String getPicture() {
		return picture;
	}
	
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public java.sql.Timestamp getSendTime() {
		return sendTime;
	}
	
	public void setSendTime(java.sql.Timestamp sendTime) {
		this.sendTime = sendTime;
	}
	
	public int getState() {
		return state;
	}
	
	public void setState(int state) {
		this.state = state;
	}
	
	public String getClaName() {
		return claName;
	}
	
	public void setClaName(String claName) {
		this.claName = claName;
	}
	
	public String getTeaName() {
		return teaName;
	}
	
	public void setTeaName(String teaName) {
		this.teaName = teaName;
	}
	
	public String getRecipient() {
		return recipient;
	}
	
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	
	public String getReply() {
		return reply;
	}
	
	public void setReply(String reply) {
		this.reply = reply;
	}
	
	public String toString(){
		String s = null ;
		
		s = "FNum-" + fnum + ",StuName-" + stuNum + ",type-" + type + ",state-" + state + ",status-" + status + ",reply-" + reply ;
		
		return s ;
	}
}
