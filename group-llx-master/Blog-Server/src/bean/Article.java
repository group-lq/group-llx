package bean;

import java.sql.Timestamp;

public class Article implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String title;
	private String content;
	private String keyWords;
	private String description;
	private Long columnid;
	private Timestamp lable;
	private String titlelmgs;
	private String status;
	private String type;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getColumnid() {
		return columnid;
	}
	public void setColumnid(Long columnid) {
		this.columnid = columnid;
	}
	public Timestamp getLable() {
		return lable;
	}
	public void setLable(Timestamp lable) {
		this.lable = lable;
	}
	public String getTitlelmgs() {
		return titlelmgs;
	}
	public void setTitlelmgs(String titlelmgs) {
		this.titlelmgs = titlelmgs;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", content=" + content + ", keyWords=" + keyWords
				+ ", description=" + description + ", columnid=" + columnid + ", lable=" + lable + ", titlelmgs="
				+ titlelmgs + ", status=" + status + ", type=" + type + "]";
	}
	
	

}
