package com.yc.biz;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sun.org.apache.bcel.internal.generic.Select;
import com.yc.bean.Comment;
import com.yc.bean.News;
import com.yc.bean.Reply;
import com.yc.bean.User;
import com.yc.dao.DBHelper;

public class SNewsBiz {
	@SuppressWarnings("unlikely-arg-type")
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
		
		if(news.getTitle() == null && news.getAuthor() == null && news.getNewsid() == null){
			String sql1 = "select * from news limit  " + start +" , "+end;
			System.out.println();
			return DBHelper.select(sql1, News.class, params);
		}
		
		String sql = "select * from news where 1=1 ";
		params.clear();
		if(news.getTitle() != null && ! news.getTitle().trim().isEmpty()){
			sql += "  and title like concat ('%',?,'%')";
			System.out.println();
			params.add(news.getTitle() );
		}
		
		if(news.getAuthor() != null && ! news.getAuthor().trim().isEmpty()){
			
			sql += "  and author like concat ('%',?,'%')";
			System.out.println(news.getAuthor());
			params.add(news.getAuthor());
			
		}
		if(news.getNewsid() != null && !"".equals( news.getNewsid()) ){
			sql += " and newsid like concat ('%',?,'%')";
			System.out.println( news.getNewsid() );
			params.add( news.getNewsid() );
		}
		sql+=" limit "+start+" , "+end;
		return DBHelper.select(sql, News.class, params);
	}
	public void addArticle(News news, String content) throws BizException {
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		if(news.getTitle() == null || news.getTitle().trim().isEmpty()) {
			throw new BizException("标题为必填字段！");
		}
		if(news.getAuthor() == null || news.getAuthor().trim().isEmpty()) {
			throw new BizException("请填写作者名字");
		}
		if(news.getContent() == null || news.getContent().trim().isEmpty()) {
			throw new BizException("正文没有任何内容哦！");
		}
		String sql = " insert into news(title,author,content,time,description) values (?,?,?,?,?) ";
		DBHelper.insert(sql,news.getTitle(),news.getAuthor(),content,now,news.getDescription());
	}

	public void save(News news) {
		String sql = "update news set title = ?,author = ?,content = ? where newsid = ?";
		DBHelper.update(sql, news.getTitle(),news.getAuthor(),news.getContent(),news.getNewsid());
	}


	public void delete(String newsid) {
		String sql = "delete from news where newsid = ?";
		DBHelper.update(sql, newsid);
	}

	public Object findNew(News news) {
		String sql = "select * from news order by time desc limit 0,4";
		return DBHelper.select(sql);
	}
	public News findByOne(String newsid) {
		return DBHelper.uniqueObject("select * from news where newsid =?", News.class, newsid);
	}
	public void insertReply(Reply rep) {
		String sql2 = "insert into reply values(?,?,?,?)";
		DBHelper.insert(sql2,rep.getUserid(),rep.getReplyComment(),rep.getReplyTime(),rep.getCommentId());
	}
	
}
