package com.yc.bean;

import java.sql.Timestamp;

public class Repair implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long rId;
	private Long userId;
	private String description;
	private String staff;
	private String status;
	private String address;
	public Long getRepairId() {
		return rId;
	}
	public void setRepairId(Long repairId) {
		this.rId = repairId;
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
	@Override
	public String toString() {
		return "repair [repairId=" + rId + ", userId=" + userId + ", description=" + description + ", staff="
				+ staff + ", status=" + status + ", address=" + address + "]";
	}
	
	
	
}
