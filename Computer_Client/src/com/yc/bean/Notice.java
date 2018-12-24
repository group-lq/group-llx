package com.yc.bean;

import java.util.Date;

public class Notice implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long Id;
	private Long userId;
	private Date Time;
	private String content;
	private String address;
	private String inform;
	private String pic;
	private String type;
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Date getTime() {
		return Time;
	}
	public void setTime(Date time) {
		Time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getInform() {
		return inform;
	}
	public void setInform(String inform) {
		this.inform = inform;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Notice [Id=" + Id + ", userId=" + userId + ", Time=" + Time + ", content=" + content + ", address="
				+ address + ", inform=" + inform + ", pic=" + pic + ", type=" + type + "]";
	}
	
	
	
	
}
