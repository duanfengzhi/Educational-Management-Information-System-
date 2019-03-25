package com.hfut.domain;

public class ExTeacher {
	private String ExTeaName;
	private String ExPwd;
	private String ExTeaNo;
	private String ExTeaTel;
	private String ExTeaEmail;
	private String WorkUnit	;
	private String WorkKind ;
	private String ExTitle ;
	private String ExTdegree;
	private int    JobYear;
	private String ExTgraduate ;
	private String  ExTeaCourse ;
	private String Major;
	private String ExProject ;
	private String  Lisence ;
	
	public  ExTeacher(){
		
	}
	
	
	
	



	public ExTeacher(String exTeaNo, String exPwd, String exTeaName, String exTeaTel, String exTeaEmail,
			String workUnit, String workKind, String exTitle, String exTdegree, int jobYear, String exTgraduate,
			String exTeaCourse, String major, String exProject, String lisence) {
		super();
		ExTeaNo = exTeaNo;
		ExPwd = exPwd;
		ExTeaName = exTeaName;
		ExTeaTel = exTeaTel;
		ExTeaEmail = exTeaEmail;
		WorkUnit = workUnit;
		WorkKind = workKind;
		ExTitle = exTitle;
		ExTdegree = exTdegree;
		JobYear = jobYear;
		ExTgraduate = exTgraduate;
		ExTeaCourse = exTeaCourse;
		Major = major;
		ExProject = exProject;
		Lisence = lisence;
	}







	public ExTeacher( String ExTeaName,String ExTeaNo,String ExTeaTel,String ExTeaEmail,String WorkUnit,
	String WorkKind ,String ExTitle ,String ExTdegree,int  JobYear,String ExTgraduate ,String  ExTeaCourse ,String Major,
	String ExProject ,String  Lisence){
			
			this.ExTeaName=ExTeaName;
			this.ExTeaNo=ExTeaNo;
			this.ExTeaTel=ExTeaTel;
			this.ExTeaEmail=ExTeaEmail;
			this.WorkUnit=WorkUnit;
			this.WorkKind=WorkKind;
			this.ExTitle=ExTitle;
			this.ExTdegree=ExTdegree;
			this.JobYear=JobYear;
			this.ExTgraduate=ExTgraduate;
			this.ExTeaCourse=ExTeaCourse;
			this.Major=Major;
			this.ExProject=ExProject;
			this.Lisence=Lisence;
		}
	

	public String getExTeaName() {
		return ExTeaName;
	}
	public void setExTeaName(String exTeaName) {
		ExTeaName = exTeaName;
	}
	public String getExTeaNo() {
		return ExTeaNo;
	}
	public void setExTeaNo(String exTeaNo) {
		ExTeaNo = exTeaNo;
	}
	public String getWorkUnit() {
		return WorkUnit;
	}
	public void setWorkUnit(String workUnit) {
		WorkUnit = workUnit;
	}
	public String getWorkKind() {
		return WorkKind;
	}
	public void setWorkKind(String workKind) {
		WorkKind = workKind;
	}
	public String getExTitle() {
		return ExTitle;
	}
	public void setExTitle(String exTitle) {
		ExTitle = exTitle;
	}
	public String getExTdegree() {
		return ExTdegree;
	}
	public void setExTdegree(String exTdegree) {
		ExTdegree = exTdegree;
	}
	public int getJobYear() {
		return JobYear;
	}
	public void setJobYear(int jobYear) {
		JobYear = jobYear;
	}
	public String getExTgraduate() {
		return ExTgraduate;
	}
	public void setExTgraduate(String exTgraduate) {
		ExTgraduate = exTgraduate;
	}
	public String getExTeaCourse() {
		return ExTeaCourse;
	}
	public void setExTeaCourse(String exTeaCourse) {
		ExTeaCourse = exTeaCourse;
	}
	public String getMajor() {
		return Major;
	}
	public void setMajor(String major) {
		Major = major;
	}
	public String getExProject() {
		return ExProject;
	}
	public void setExProject(String exProject) {
		ExProject = exProject;
	}
	public String getLisence() {
		return Lisence;
	}
	public void setLisence(String lisence) {
		Lisence = lisence;
	}
	public String getExPwd() {
		return ExPwd;
	}
	public void setExPwd(String exPwd) {
		ExPwd = exPwd;
	}
	public String getExTeaTel() {
		return ExTeaTel;
	}
	public void setExTeaTel(String exTeaTel) {
		ExTeaTel = exTeaTel;
	}
	public String getExTeaEmail() {
		return ExTeaEmail;
	}
	public void setExTeaEmail(String exTeaEmail) {
		ExTeaEmail = exTeaEmail;
	}

}
