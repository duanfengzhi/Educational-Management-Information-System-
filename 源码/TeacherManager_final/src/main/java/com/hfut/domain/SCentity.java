package com.hfut.domain;

/**

 * 实体类
 */
public class SCentity {

    private String stuNo;
    private String stuName;
    private String cTimeRange;
    private String cNo;
    private String cName;
    private String cNoDe;
    
	public SCentity() {
	}

	public SCentity(String stuNo, String stuName, String cTimeRange, String cNo, String cName, String cNoDe) {
		super();
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.cTimeRange = cTimeRange;
		this.cNo = cNo;
		this.cName = cName;
		this.cNoDe = cNoDe;
	}

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getCTimeRange() {
		return cTimeRange;
	}

	public void setCTimeRange(String cTimeRange) {
		this.cTimeRange = cTimeRange;
	}

	public String getCNo() {
		return cNo;
	}

	public void setCNo(String cNo) {
		this.cNo = cNo;
	}

	public String getCName() {
		return cName;
	}

	public void setCName(String cName) {
		this.cName = cName;
	}

	public String getCNoDe() {
		return cNoDe;
	}

	public void setCNoDe(String cNoDe) {
		this.cNoDe = cNoDe;
	}
    
    
}

