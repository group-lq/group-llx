package com.yc.bean;

import java.sql.Timestamp;
import java.util.Date;

public class Reply {
	private String replyid;
	private String newsid;
	private Long userid;
	private String replyComment;
	private Timestamp replyTime;
	private String CommentId;
	private User user;
	public String getReplyid() {
		return replyid;
	}
	public void setReplyid(String replyid) {
		this.replyid = replyid;
	}
	public String getNewsid() {
		return newsid;
	}
	public void setNewsid(String newsid) {
		this.newsid = newsid;
	}
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public String getReplyComment() {
		return replyComment;
	}
	public void setReplyComment(String replyComment) {
		this.replyComment = replyComment;
	}
	public Timestamp getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Timestamp replyTime) {
		this.replyTime = replyTime;
	}
	public String getCommentId() {
		return CommentId;
	}
	public void setCommentId(String commentId) {
		CommentId = commentId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Reply [replyid=" + replyid + ", newsid=" + newsid + ", userid=" + userid + ", replyComment="
				+ replyComment + ", replyTime=" + replyTime + ", CommentId=" + CommentId + ", user=" + user + "]";
	}
	
	
	
}
