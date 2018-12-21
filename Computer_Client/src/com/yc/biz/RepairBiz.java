package com.yc.biz;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import com.yc.bean.News;
import com.yc.bean.Page;
import com.yc.bean.PageData;
import com.yc.bean.Repair;
import com.yc.bean.User;
import com.yc.dao.DBHelper;

public class RepairBiz {
	public void add(Repair repair,User user) throws BizException {
		if(repair.getAddress() == null || repair.getAddress().trim().isEmpty()){
			throw new BizException("地址不能为空!");
		}
		if(repair.getDescription() == null || repair.getDescription().trim().isEmpty()){
			throw new BizException("描述不能为空!");
		}
		String sql = "insert into repair(rid,userid,address,description,status,time) values(?,?,?,?,?,?)";
		UUID uuid = UUID.randomUUID();
		Timestamp time = new Timestamp(System.currentTimeMillis());
		System.out.println(repair.getRid()+":"+user.getId());
		String rid = uuid.toString().replaceAll("-", "");
		repair.setRid(rid);
		repair.setTime(time);
		repair.setStatus("待回复");
		DBHelper.insert(sql,repair.getRid(), user.getId(),repair.getAddress(),
				repair.getDescription(),repair.getStatus(),repair.getTime());		
	}

	public Object find(Repair repair ,String nPage,int pageSize) {//nPage 取值可能 1,beforePage,afterPage,totlePage
		int totalSize=0; //总记录数
		int totalPage=0;//总页数
		int nowPage=1;//当前页数
		int start=0;//查询位置的起始页
		int end=0;//结束页
		String sql2 = "select * from repair";
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
		String sql = "select r.rid,u.username,u.tel,r.time,r.address,r.description,r.staff,r.`status` from user u join repair r on u.id = r.userid where 1=1";
		if(repair.getRid() == null && repair.getStaff() == null) {
			String sql1 = "select r.rid,u.username,u.tel,r.time,r.address,r.description,r.staff,r.`status` from user u join repair r on u.id = r.userid  limit "+start+","+end;
			return DBHelper.select(sql1, params);
		}
		if(repair.getRid() != null && ! repair.getRid().trim().isEmpty()){
			sql += " and rid like ? limit "+start+","+end+" ";
			params.add("%"+repair.getRid()+"%");
		}
		if(repair.getStaff() != null && ! repair.getStaff().trim().isEmpty()){
			sql += " and staff like ? limit "+start+","+end+" ";
			params.add("%"+repair.getStaff()+"%");
		}		
		return DBHelper.select(sql, params);
	}

	public Repair findByOne(String id) {
		return DBHelper.uniqueObject("select * from repair where rid = ?", Repair.class,id);
	}

	public void save(Repair repair) throws BizException {
		if(repair.getStaff() == null || repair.getStaff().trim().isEmpty()){
			throw new BizException("请选择处理人员!");
		}
		DBHelper.update("update repair set staff = ? where rid =?", 
				repair.getStaff(),repair.getRid());
	}

	public PageData findAll(Page page) {
		int start =(page.getPage()-1)*page.getRows() ;
		int end =page.getRows() ;
		String sql = "select * from repair limit ?,?";
		System.out.println(DBHelper.select(sql,start,end));
		PageData pageData = new PageData();
		pageData.setRows(DBHelper.select(sql,start,end));
		sql = "select count(1) cnt from repair";
		pageData.setTotal(DBHelper.uniqueValue(sql, "cnt"));
		return pageData;
	}

	public Object findStaff(Repair repair) {
		String sql = "select count(*) cnt from(select * from repair where staff is null)a";
		return DBHelper.uniqueValue(sql, "cnt");
	}

	

}
