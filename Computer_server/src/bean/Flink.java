package bean;

import java.sql.Timestamp;

public class Flink implements java.io.Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String webUrl;
	private String linklmg;
	private String desvription;
	private String status;
	private String openWays;
	private Long sort;
	private String createBy;
	private Timestamp createDate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWebUrl() {
		return webUrl;
	}
	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}
	public String getLinklmg() {
		return linklmg;
	}
	public void setLinklmg(String linklmg) {
		this.linklmg = linklmg;
	}
	public String getDesvription() {
		return desvription;
	}
	public void setDesvription(String desvription) {
		this.desvription = desvription;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOpenWays() {
		return openWays;
	}
	public void setOpenWays(String openWays) {
		this.openWays = openWays;
	}
	public Long getSort() {
		return sort;
	}
	public void setSort(Long sort) {
		this.sort = sort;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Flink [id=" + id + ", name=" + name + ", webUrl=" + webUrl + ", linklmg=" + linklmg + ", desvription="
				+ desvription + ", status=" + status + ", openWays=" + openWays + ", sort=" + sort + ", createBy="
				+ createBy + ", createDate=" + createDate + "]";
	}
	
	
	
}
