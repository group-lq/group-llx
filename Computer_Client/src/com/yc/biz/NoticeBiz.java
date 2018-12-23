package com.yc.biz;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.yc.bean.Comment;
import com.yc.bean.Notice;
import com.yc.bean.Page;
import com.yc.bean.PageData;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.dao.DBHelper;

public class NoticeBiz {
	private UserBiz uBiz = new UserBiz();
	public Object find(Notice notice,String nPage,int pageSize,User user) {
		int totalSize=0; //总记录数
		int totalPage=0;//总页数
		int nowPage=1;//当前页数
		int start=0;//查询位置的起始页
		int end=0;//结束页
		String sql2 = "select * from notice";
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
		
		
		String sql = "select n.id,n.time,u.username,n.address,n.inform,n.content from user u join notice n on u.id=n.userid where 1=1";
		if(notice.getTime() == null && notice.getInform() == null && user.getUsername() == null) {
			String sql1 = "select n.id,n.time,u.username,n.address,n.inform,n.content from user u join notice n on u.id=n.userid ORDER BY n.time desc limit "+start+","+end+" ";
			return DBHelper.select(sql1);
		}
		if(notice.getTime() != null ){
			sql += " and time like ? ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+notice.getTime()+"%");
		}
		if(notice.getInform() != null && ! notice.getInform().trim().isEmpty()){
			sql += " and inform like ? ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+notice.getInform()+"%");
		}
		if(user.getUsername() != null && ! user.getUsername().trim().isEmpty()){
			sql += " and userid like ? ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+uBiz.findById(user)+"%");
		}	
		return DBHelper.select(sql, params);
		
	}

	public Notice findByOne(String id) {
		return DBHelper.uniqueObject("select * from notice where id = ?", Notice.class,id);
	}

	public void add(Notice notice, User user,String time) throws BizException {
		
		if(notice.getInform() == null || notice.getInform().trim().isEmpty()){
			throw new BizException("会议主题不能为空!");
		}
		if(notice.getAddress() == null || notice.getAddress().trim().isEmpty()){
			throw new BizException("地址不能为空!");
		}
		if(time == null ){
			throw new BizException("时间不能为空!");
		}
		if(user.getUsername() == null || user.getUsername().trim().isEmpty() ){
			throw new BizException("请选择组织人!");
		}
		
		String sql = "insert into notice(userid,inform,address,time) values(?,?,?,?)";
		
		DBHelper.insert(sql,uBiz.findById(user), notice.getInform(),notice.getAddress(),
				time);
		
	}

	public PageData find1(Notice notice, Page page) {
		int start =(page.getPage()-1)*page.getRows() ;
		int end =page.getRows() ;
		String sql = "select n.id,n.time,u.username,n.address,n.inform,n.content from user u join notice n on u.id=n.userid  where 1=1  " + 
				" 1=1";
		ArrayList<Object> params = new ArrayList<Object>();
		if(notice.getTime() == null && notice.getAddress() == null && notice.getInform() == null) {
			sql = "select n.id,n.time,u.username,n.address,n.inform,n.content from user u join notice n on u.id=n.userid  where time not in (select max(time) from notice) ORDER BY n.time desc limit " + 
					" ?,?";
			System.out.println(DBHelper.select(sql,start,end));
			PageData pageData = new PageData();
			pageData.setRows(DBHelper.select(sql,start,end));
			sql = "select count(1) cnt from notice";
			pageData.setTotal(DBHelper.uniqueValue(sql, "cnt"));
			return pageData;
		}
		if(notice.getTime() != null ){
			
			sql += " and n.time like ? and time not in (select max(time) from notice) ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+notice.getTime()+"%");
		}
		if(notice.getInform() != null && ! notice.getInform().trim().isEmpty()){
			sql += " and n.inform like ? time not in (select max(time) from notice) ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+notice.getInform()+"%");
		}
		if(notice.getAddress() != null && ! notice.getAddress().trim().isEmpty()){
			sql += " and u.userid like ? time not in (select max(time) from notice) ORDER BY n.time desc limit "+start+","+end+" ";
			params.add("%"+notice.getAddress()+"%");
		}	
		PageData pageData = new PageData();
		pageData.setRows(DBHelper.select(sql,params));
		sql = "select count(1) cnt from notice";
		pageData.setTotal(DBHelper.uniqueValue(sql, "cnt"));
		return pageData;
	}
	
	public Object findNum(Notice notice,Repair repair,Comment comment,User user) {
		String sql = "select count(*) cnt from(select * from repair r join user u on r.userid=u.id where r.`status` not in ('待回复') and u.username = ? )a  ";  
		String sql1 = "select count(*) cnt1 from notice where time in (select max(time) from notice)";
		//String sql2 = "select count(*) cnt from(select * from notice where time in(select max(time) from notice))a";
	
		List<Map<String, Object>> list = DBHelper.select(sql,user.getUsername());
		List<Map<String, Object>> list1 = DBHelper.select(sql1);
		List<Map<String, Object>> list2 = new ArrayList<Map<String, Object>>();
		for(Map<String, Object> map : list) {
			list2.add(map);
		}
		for(Map<String, Object> map : list1) {
			list2.add(map);
		}
		return list2;
	}

	public List<Map<String, Object>> findNewInform() {
		String sql = "select *  from notice where time in (select max(time) from notice)";
		return DBHelper.select(sql);
	}

	public int findServerNum(Notice notice, Repair repair, Comment comment, User user) {
		String sql = "select count(*) cnt from(select * from repair r join user u on r.userid=u.id where r.`status`  in ('待回复'))a  ";  
		//String sql1 = "select count(*) cnt1 from notice where time in (select max(time) from notice)";
		//String sql2 = "select count(*) cnt from(select * from notice where time in(select max(time) from notice))a";
		String sql1 = "select count(*) cnt from repair";
		List<Map<String, Object>> list = DBHelper.select(sql);
		List<Map<String, Object>> list1 = DBHelper.select(sql1);
		int count = 0;
		int len = 1;
		for(Map<String, Object> map : list) {
			for(Map.Entry<?, ?> entry : map.entrySet()) {
				count = (int) entry.getValue();
			}
		}
		for(Map<String, Object> map : list1) {
			for(Map.Entry<?, ?> entry : map.entrySet()) {
				len = (int) entry.getValue();
			}
		}
		return len/count;
	}
	

}
