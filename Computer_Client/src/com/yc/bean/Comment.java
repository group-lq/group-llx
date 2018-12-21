package com.yc.bean;

import java.sql.Timestamp;

public class Comment implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//请求的参数
	private Long commentId;
	private Timestamp commentTime;
	private Long userId;
	private Long newsId;
	private String content;
	private User user;
	private News news;
	
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentTime=" + commentTime + ", userId=" + userId + ", newsId="
				+ newsId + ", content=" + content + ", user=" + user + ", news=" + news + "]";
	}
	public Long getCommentId() {
		return commentId;
	}
	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}
	public Timestamp getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	
	
	
	

}
