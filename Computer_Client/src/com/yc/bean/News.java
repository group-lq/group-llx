package com.yc.bean;

import java.sql.Timestamp;

public class News implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long newsid;
	private String title;
	private Timestamp time;
	private String author;
	private Timestamp deadTime;
	private String content;
	private String cfrom;
	public Long getNewsid() {
		return newsid;
	}
	public void setNewsid(Long newsid) {
		this.newsid = newsid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Timestamp getDeadTime() {
		return deadTime;
	}
	public void setDeadTime(Timestamp deadTime) {
		this.deadTime = deadTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCfrom() {
		return cfrom;
	}
	public void setCfrom(String cfrom) {
		this.cfrom = cfrom;
	}
	@Override
	public String toString() {
		return "News [newsid=" + newsid + ", title=" + title + ", time=" + time + ", author=" + author + ", deadTime="
				+ deadTime + ", content=" + content + ", cfrom=" + cfrom + "]";
	}
	
	
	
}
