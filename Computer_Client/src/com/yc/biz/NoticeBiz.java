package com.yc.biz;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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

}
