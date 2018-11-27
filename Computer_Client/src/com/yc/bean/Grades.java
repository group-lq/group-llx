package com.yc.bean;

public class Grades implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long tId;
	private Long sno;
	private Long testNo;
	private Long idenId;
	private String pwd;
	private String type;
	private String term;
	private String year;
	public Long gettId() {
		return tId;
	}
	public void settId(Long tId) {
		this.tId = tId;
	}
	public Long getSno() {
		return sno;
	}
	public void setSno(Long sno) {
		this.sno = sno;
	}
	public Long getTestNo() {
		return testNo;
	}
	public void setTestNo(Long testNo) {
		this.testNo = testNo;
	}
	public Long getIdenId() {
		return idenId;
	}
	public void setIdenId(Long idenId) {
		this.idenId = idenId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	@Override
	public String toString() {
		return "Grades [tId=" + tId + ", sno=" + sno + ", testNo=" + testNo + ", idenId=" + idenId + ", pwd=" + pwd
				+ ", type=" + type + ", term=" + term + ", year=" + year + "]";
	}
	
	
	
}
