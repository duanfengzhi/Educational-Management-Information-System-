package com.hfut.domain;

public class ExClasstable {
    private String cno;
    private String cname;
    private String ctimeweek;
    private String ctimeday;
    private String ctime;
    private String caddr;
    private String exteano;
    private String exteaname;
    
	public ExClasstable() {
	}
	public ExClasstable(String cno, String cname, String ctimeweek, String ctimeday, String ctime, String caddr,
			String exteano, String exteaname) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.ctimeweek = ctimeweek;
		this.ctimeday = ctimeday;
		this.ctime = ctime;
		this.caddr = caddr;
		this.exteano = exteano;
		this.exteaname = exteaname;
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
	public String getCtimeweek() {
		return ctimeweek;
	}
	public void setCtimeweek(String ctimeweek) {
		this.ctimeweek = ctimeweek;
	}
	public String getCtimeday() {
		return ctimeday;
	}
	public void setCtimeday(String ctimeday) {
		this.ctimeday = ctimeday;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getExteano() {
		return exteano;
	}
	public void setExteano(String exteano) {
		this.exteano = exteano;
	}
	public String getExteaname() {
		return exteaname;
	}
	public void setExteaname(String exteaname) {
		this.exteaname = exteaname;
	}
	
    
}
