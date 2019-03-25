package com.hfut.state;

public class FeedBackQueryState extends PageQueryState {
	private java.sql.Timestamp date1;
	private java.sql.Timestamp date2;
	private String status;
	
	public FeedBackQueryState() {}
	
	public FeedBackQueryState(int curPage, java.sql.Timestamp date1, java.sql.Timestamp date2, String status) {
		setCurPage(curPage);
		this.date1 = date1;
		this.date2 = date2;
		this.status = status;
	}

	public java.sql.Timestamp getDate1() {
		return date1;
	}
	
	public void setDate1(java.sql.Timestamp date1) {
		this.date1 = date1;
	}
	
	public java.sql.Timestamp getDate2() {
		return date2;
	}
	
	public void setDate2(java.sql.Timestamp date2) {
		this.date2 = date2;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
