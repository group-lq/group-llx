package com.yc.bean;

public class Grades implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long tid;
	private String idenno;
	private String subject;
	private String name;
	private String gresult;
	public String getGresult() {
		return gresult;
	}
	public void setGresult(String gresult) {
		this.gresult = gresult;
	}
	public Long getTid() {
		return tid;
	}
	public void setTid(Long tid) {
		this.tid = tid;
	}
	
	public String getIdenno() {
		return idenno;
	}
	public void setIdenno(String idenno) {
		this.idenno = idenno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Grades [tid=" + tid + ", idenno=" + idenno + ", subject=" + subject + ", name=" + name + ", gresult="
				+ gresult + "]";
	}
}
