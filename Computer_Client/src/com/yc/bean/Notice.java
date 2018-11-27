package com.yc.bean;

import java.sql.Timestamp;

public class Notice implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long nId;
	private Long userId;
	private Timestamp nTime;
	private String ncontent;
	public Long getnId() {
		return nId;
	}
	public void setnId(Long nId) {
		this.nId = nId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Timestamp getnTime() {
		return nTime;
	}
	public void setnTime(Timestamp nTime) {
		this.nTime = nTime;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", userId=" + userId + ", nTime=" + nTime + ", ncontent=" + ncontent + "]";
	}
	
	
}
