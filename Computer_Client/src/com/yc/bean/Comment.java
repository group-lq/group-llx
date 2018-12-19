package com.yc.bean;

import java.sql.Timestamp;

public class Comment implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//请求的参数
	private Long cId;
	private Timestamp cTime;
	private Long userId;
	private Long newsId;
	private String content;
	private Long count;
	public Long getcId() {
		return cId;
	}
	public void setcId(Long cId) {
		this.cId = cId;
	}
	public Timestamp getcTime() {
		return cTime;
	}
	public void setcTime(Timestamp cTime) {
		this.cTime = cTime;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getNewsId() {
		return newsId;
	}
	public void setNewsId(Long newsId) {
		this.newsId = newsId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Comment [cId=" + cId + ", cTime=" + cTime + ", userId=" + userId + ", newsId=" + newsId + ", content="
				+ content + ", count=" + count + "]";
	}
	
	
	

}
