package com.yc.bean;

import java.sql.Timestamp;

public class User implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String username;
	private String pwd;
	private String tel;
	private String majorClass;
	private Timestamp enterTime;
	private String type;
	private String pic;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMajorClass() {
		return majorClass;
	}
	public void setMajorClass(String majorClass) {
		this.majorClass = majorClass;
	}
	public Timestamp getEnterTime() {
		return enterTime;
	}
	public void setEnterTime(Timestamp enterTime) {
		this.enterTime = enterTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", pwd=" + pwd + ", tel=" + tel + ", majorClass="
				+ majorClass + ", enterTime=" + enterTime + ", type=" + type + ", pic=" + pic + "]";
	}
	
	
	
}
