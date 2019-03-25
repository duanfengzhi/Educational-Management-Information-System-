package com.hfut.domain;

public class CourseInfo {
	private String cno;
	private String cname;
	private String cbegintime;
	private String ccredit;
	private String ccreditofex;
	private int cperiod;
	private int cperiodofex;
	private int cperiodofth;
	private int cperiodofpra;
	private int cperiodofcom;
	private String cutil;
	private String ctype;
	private String teano;
	private String teaname;
	
	
	
	public CourseInfo() {
	}
	
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCbegintime() {
		return cbegintime;
	}
	public void setCbegintime(String cbegintime) {
		this.cbegintime = cbegintime;
	}
	public String getCcredit() {
		return ccredit;
	}
	public void setCcredit(String ccredit) {
		this.ccredit = ccredit;
	}
	public String getCcreditofex() {
		return ccreditofex;
	}
	public void setCcreditofex(String ccreditofex) {
		this.ccreditofex = ccreditofex;
	}
	public int getCperiod() {
		return cperiod;
	}
	public void setCperiod(int cperiod) {
		this.cperiod = cperiod;
	}
	public int getCperiodofex() {
		return cperiodofex;
	}
	public void setCperiodofex(int cperiodofex) {
		this.cperiodofex = cperiodofex;
	}
	public int getCperiodofth() {
		return cperiodofth;
	}
	public void setCperiodofth(int cperiodofth) {
		this.cperiodofth = cperiodofth;
	}
	public int getCperiodofpra() {
		return cperiodofpra;
	}
	public void setCperiodofpra(int cperiodofpra) {
		this.cperiodofpra = cperiodofpra;
	}
	public int getCperiodofcom() {
		return cperiodofcom;
	}
	public void setCperiodofcom(int cperiodofcom) {
		this.cperiodofcom = cperiodofcom;
	}
	public String getCutil() {
		return cutil;
	}
	public void setCutil(String cutil) {
		this.cutil = cutil;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getTeano() {
		return teano;
	}
	public void setTeano(String teano) {
		this.teano = teano;
	}
	public String getTeaname() {
		return teaname;
	}
	public void setTeaname(String teaname) {
		this.teaname = teaname;
	}
	public CourseInfo(String cno, String cname, String cbegintime, String ccredit, String ccreditofex, int cperiod,
			int cperiodofex, int cperiodofth, int cperiodofpra, int cperiodofcom, String cutil, String ctype, String teano,
			String teaname) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.cbegintime = cbegintime;
		this.ccredit = ccredit;
		this.ccreditofex = ccreditofex;
		this.cperiod = cperiod;
		this.cperiodofex = cperiodofex;
		this.cperiodofth = cperiodofth;
		this.cperiodofpra = cperiodofpra;
		this.cperiodofcom = cperiodofcom;
		this.cutil = cutil;
		this.ctype = ctype;
		this.teano = teano;
		this.teaname = teaname;
	}
	
}
