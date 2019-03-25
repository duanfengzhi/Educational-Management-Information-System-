package com.hfut.state;


public class TeacherQueryState extends PageQueryState {
	
	private String TeaName;
	private String TeaBelong;
	public TeacherQueryState(){
		
	}
	public TeacherQueryState(int curPage,String TeaName,String TeaBelong) {
		setCurPage(curPage);
		this.TeaName=TeaName;
		this.TeaBelong=TeaBelong;
	}
	
	

	public String getTeaName() {
		return TeaName;
	}
	public void setTeaName(String teaName) {
		TeaName = teaName;
	}
	public String getTeaBelong() {
		return TeaBelong;
	}
	public void setTeaBelong(String teaBelong) {
		TeaBelong = teaBelong;
	}
	

	@Override
	public String toString() {
		return "";
	}
	
}