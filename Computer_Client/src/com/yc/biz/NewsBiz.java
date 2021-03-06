package com.yc.biz;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.yc.bean.News;
import com.yc.dao.DBHelper;

public class NewsBiz {

	public Object find(News news ,String nPage,int pageSize) {//nPage 取值可能 1,beforePage,afterPage,totlePage
		int totalSize=0; //总记录数
		int totalPage=0;//总页数
		int nowPage=1;//当前页数
		int start=0;//查询位置的起始页
		int end=0;//结束页
		String sql2 = "select * from news";
		ArrayList<Object> params = new ArrayList<Object>(); 
		List<Map<String, Object>> msp = DBHelper.select(sql2);
		//总记录数
		totalSize = msp.size();
		//总页数
		 if(totalSize % pageSize == 0){
			totalPage = totalSize / pageSize;
		}else{
			totalPage = totalSize / pageSize + 1;
		}
		if(nPage == null || "".equals(nPage)){
			nowPage=1;
		}else if("1".equals(nPage)){
			nowPage = Integer.valueOf(nPage);
		}else if("beforePage".equals(nPage)){
			if(nowPage == 1){
				nowPage = 1;
			}else{
				nowPage -=  1 ;
			}
		}
		if("afterPage".equals(nPage)){
			if(nowPage == totalPage){
				nowPage = totalPage;
			}else{
				nowPage +=  1 ;
			}
			
		}else if("totlePage".equals(nPage)){
			nowPage = totalPage;
		}
		start = (nowPage - 1)*pageSize;
		end = pageSize;
		
		if(news.getTitle() == null && news.getDescription() == null){
			String sql1 = "select * from news limit "+start+","+end;
			return DBHelper.select(sql1, News.class, params);
		}
		String sql = "select * from news where 1=1";
		if(news.getTitle() != null && ! news.getTitle().trim().isEmpty()){
			sql += " and title like ?";
			params.add("%"+news.getTitle()+"% limit"+start+","+end);
		}
		if(news.getDescription() != null && ! news.getDescription().trim().isEmpty()){
			sql += " and decription like ?";
			params.add("%"+news.getDescription()+"% limit"+start+","+end);
		}
		return DBHelper.select(sql, News.class, params);
	}
	
	public News findByOne(String id) {
		return DBHelper.uniqueObject("select * from news where newsid =?", News.class, id);
	}
	
	public Object findNew(News news) {
		String sql = "select * from news order by time desc limit 0,4";
		return DBHelper.select(sql);
	}
	
	public Object findS(News news) {
		String sql = "select n.title,n.decription,n.author,c.count,n.time,n.cfrom from news n left join comment c on n.newsid = c.newsid"
				+ " where 1=1";
		ArrayList<Object> params = new ArrayList<Object>(); 
		if(news.getAuthor() != null && ! news.getAuthor().trim().isEmpty()){
			sql += " and author like ?";
			params.add("%"+news.getAuthor()+"% ");
		}
		if(news.getDescription() != null && ! news.getDescription().trim().isEmpty()){
			sql += " and decription like ?";
			params.add("%"+news.getDescription()+"% ");
		}
		if(news.getCfrom() != null && ! news.getCfrom().trim().isEmpty()){
			sql += " and cfrom like ?";
			params.add("%"+news.getCfrom()+"% ");
		}
		return DBHelper.select(sql, params);
	}
}
