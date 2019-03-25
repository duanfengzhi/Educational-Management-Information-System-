package com.hfut.domain;

public class Teacher {
	private String TeaNo;        //编号
	private String TeaPwd;		 //
	private String TeaName;
	private String TeaTel;
	private String TeaEmail;
	private String TeaKind ;	 //院内、校内
	private String TeaBelong;	//学院
	private String TeaCourse; 	//课程
	private String TeaTitle;		 //职称
	private String Teadegree ;		//学位
	private int   TeaAge ;	
	private String TeaSex ; 		
	private String Teagraduate;	 //毕业院校
	private String OverSeaExp ;	//海外经历
	private String EngBack 	;	 //工程背景
	private String Project 	;	 // 主持项目
	private String Paper 	;	 //论文
	private String Patent	;	 //专利
	private String TheSoft ;		//软著
	private String  Mono ;		//专著
	private String TeaPaper	;	 //教研论文
	private String Teahonor;   	//科研教学获奖
	private String TeaMorality; //师德师风表彰
	private String CoorResult;  //与本学院科研结果
	private String isActive;	

	
	public Teacher() {}
	


	public Teacher(String teaNo, String teaPwd, String teaName, String teaTel, String teaEmail, String isActive) {
		super();
		TeaNo = teaNo;
		TeaPwd = teaPwd;
		TeaName = teaName;
		TeaTel = teaTel;
		TeaEmail = teaEmail;
		this.isActive = isActive;
	}


	public Teacher(String teaNo, String teaPwd, String teaName, String teaTel, String teaEmail, String teaKind,
			String teaBelong, String teaCourse, String teaTitle, String teadegree, int teaAge, String teaSex,
			String teagraduate, String overSeaExp, String engBack, String project, String paper, String patent,
			String theSoft, String mono, String teaPaper, String teahonor, String teaMorality, String coorResult,
			String isActive) {
		super();
		TeaNo = teaNo;
		TeaPwd = teaPwd;
		TeaName = teaName;
		TeaTel = teaTel;
		TeaEmail = teaEmail;
		TeaKind = teaKind;
		TeaBelong = teaBelong;
		TeaCourse = teaCourse;
		TeaTitle = teaTitle;
		Teadegree = teadegree;
		TeaAge = teaAge;
		TeaSex = teaSex;
		Teagraduate = teagraduate;
		OverSeaExp = overSeaExp;
		EngBack = engBack;
		Project = project;
		Paper = paper;
		Patent = patent;
		TheSoft = theSoft;
		Mono = mono;
		TeaPaper = teaPaper;
		Teahonor = teahonor;
		TeaMorality = teaMorality;
		CoorResult = coorResult;
		this.isActive = isActive;
	}

	public Teacher( String  TeaName,String TeaNo, String TeaKind,String TeaBelong, String TeaCourse,
			String TeaTitle,String Teadegree,int TeaAge , String TeaSex , String Teagraduate,String OverSeaExp)
	{
		this.TeaName=TeaName;
		this.TeaNo=TeaNo;
		this.TeaKind=TeaKind;
		this.TeaBelong=TeaBelong;
		this.TeaCourse=TeaCourse;
		this.TeaTitle=TeaTitle;
		this.Teadegree=Teadegree;
		this.TeaAge=TeaAge;
		this.TeaSex=TeaSex;
		this.Teagraduate=Teagraduate;
		this.OverSeaExp=OverSeaExp;
		
	}
	
	public Teacher(String  teaName,String  teaNo, String teaTel, String  teaEmail,
			String  teaKind,String teaBelong,String  teaCourse, String  teaTitle ,
			String teadegree , int  teaAge,String teaSex ,String teagraduate,String overSeaExp){
		this.TeaName=teaName;
		this.TeaNo=teaNo;
		this.TeaTel=teaTel;
		this.TeaEmail=teaEmail;
		this.TeaKind=teaKind;
		this.TeaBelong=teaBelong;
		this.TeaCourse=teaCourse;
		this.TeaTitle=teaTitle;
		this.Teadegree=teadegree;
		this.TeaAge=teaAge;
		this.TeaSex=teaSex;
		this.Teagraduate=teagraduate;
		this.OverSeaExp=overSeaExp;

	}

	public String getTeaName() {
		return TeaName;
	}
	public void setTeaName(String teaName) {
		this.TeaName = teaName;
	}
	public String getTeaNo() {
		return TeaNo;
	}
	public void setTeaNo(String teaNo) {
		TeaNo = teaNo;
	}
	public String getTeaKind() {
		return TeaKind;
	}
	public void setTeaKind(String teaKind) {
		TeaKind = teaKind;
	}
	public String getTeaBelong() {
		return TeaBelong;
	}
	public void setTeaBelong(String teaBelong) {
		TeaBelong = teaBelong;
	}
	public String getTeaCourse() {
		return TeaCourse;
	}
	public void setTeaCourse(String teaCourse) {
		TeaCourse = teaCourse;
	}
	public String getTeaTitle() {
		return TeaTitle;
	}
	public void setTeaTitle(String teatitle) {
		TeaTitle = teatitle;
	}
	public String getTeadegree() {
		return Teadegree;
	}
	public void setTdegree(String teadegree) {
		Teadegree = teadegree;
	}
	public int getTeaAge() {
		return TeaAge;
	}
	public void setTeaAge(int teaAge) {
		TeaAge = teaAge;
	}
	public String getTeaSex() {
		return TeaSex;
	}
	public void setTeaSex(String teaSex) {
		TeaSex = teaSex;
	}
	public String getTeagraduate() {
		return Teagraduate;
	}
	public void setTgraduate(String teagraduate) {
		Teagraduate = teagraduate;
	}
	public String getOverSeaExp() {
		return OverSeaExp;
	}
	public void setOverSeaExp(String overSeaExp) {
		OverSeaExp = overSeaExp;
	}
	public String getEngBack() {
		return EngBack;
	}
	public void setEngBack(String engBack) {
		EngBack = engBack;
	}
	public String getProject() {
		return Project;
	}
	public void setProject(String project) {
		Project = project;
	}
	public String getPaper() {
		return Paper;
	}
	public void setPaper(String paper) {
		Paper = paper;
	}
	public String getPatent() {
		return Patent;
	}
	public void setPatent(String patent) {
		Patent = patent;
	}
	public String getTheSoft() {
		return TheSoft;
	}
	public void setTheSoft(String theSoft) {
		TheSoft = theSoft;
	}
	public String getMono() {
		return Mono;
	}
	public void setMono(String mono) {
		Mono = mono;
	}
	public String getTeaPaper() {
		return TeaPaper;
	}
	public void setTeaPaper(String teaPaper) {
		TeaPaper = teaPaper;
	}
	public String getTeahonor() {
		return Teahonor;
	}
	public void setTeahonor(String teahonor) {
		Teahonor = teahonor;
	}
	public String getTeaMorality() {
		return TeaMorality;
	}
	public void setTeaMorality(String teaMorality) {
		TeaMorality = teaMorality;
	}
	public String getCoorResult() {
		return CoorResult;
	}
	public void setCoorResult(String coorResult) {
		CoorResult = coorResult;
	}
	public String getTeaPwd() {
		return TeaPwd;
	}
	public void setTeaPwd(String teaPwd) {
		TeaPwd = teaPwd;
	}
	public String getTeaTel() {
		return TeaTel;
	}
	public void setTeaTel(String teaTel) {
		TeaTel = teaTel;
	}
	public String getTeaEmail() {
		return TeaEmail;
	}
	public void setTeaEmail(String teaEmail) {
		TeaEmail = teaEmail;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	} 
	
	
	
}
