package com.yc.bean;

import java.sql.Timestamp;

public class Repair implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String rid;
	private Long userId;
	private String description;
	private String staff;
	private String status;
	private String address;
	private Timestamp time;
	
	

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStaff() {
		return staff;
	}

	public void setStaff(String staff) {
		this.staff = staff;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Repair [rid=" + rid + ", userId=" + userId + ", description=" + description + ", staff=" + staff
				+ ", status=" + status + ", address=" + address + ", time=" + time + "]";
	}

	
	
	
	
}
