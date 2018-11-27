package com.yc.bean;

public class Link implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long linkId;
	private String url;
	private String description;
	public Long getLinkId() {
		return linkId;
	}
	public void setLinkId(Long linkId) {
		this.linkId = linkId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Link [linkId=" + linkId + ", url=" + url + ", description=" + description + "]";
	}
	
	
}
