package com.hfut.domain;

public class FeedBackForm {
	private int type;            //反馈类型.
	private String claName;		//课程名字.
	private String teaName;		//老师名字.
	private String info;		//反馈信息.
	private int state;          //是否匿名.（0：匿名，1：不匿名）
	private String status = "未审核";       //审核状态（未审核/未回复/已回复）
	private String picture;			
	
	public FeedBackForm() {}
	
	public int getType() {
		return type;
	}
	
	public void setType(int type) {
		this.type = type;
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
	
	public String toString(){
		String s = null ;
		
		s = "type-" + type + ",state-" + state + ",status-" + status;
		
		return s ;
	}

}
