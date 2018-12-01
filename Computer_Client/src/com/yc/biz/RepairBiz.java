package com.yc.biz;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

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
		
		String rid = uuid.toString().replaceAll("-", "");
		repair.setRid(rid);
		repair.setTime(time);
		repair.setStatus("待回复");
		DBHelper.insert(sql,repair.getRid(), user.getId(),repair.getAddress(),
				repair.getDescription(),repair.getStatus(),repair.getTime());		
	}

	public Object find(Repair repair) {
		String sql = "select * from repair where 1=1";
		ArrayList<Object> params = new ArrayList<Object>(); 
		if(repair.getRid() != null && ! repair.getRid().trim().isEmpty()){
			sql += " and rid like ?";
			params.add("%"+repair.getRid()+"%");
		}
		if(repair.getStaff() != null && ! repair.getStaff().trim().isEmpty()){
			sql += " and staff like ?";
			params.add("%"+repair.getStaff()+"%");
		}
		return DBHelper.select(sql, params);
	}

	public Repair findByOne(String id) {
		return DBHelper.unique("select * from repair where rid = ?", Repair.class,id);
	}

	public void save(Repair repair) throws BizException {
		if(repair.getStaff() == null || repair.getStaff().trim().isEmpty()){
			throw new BizException("请填写用户名!");
		}
		DBHelper.update("update repair set staff = ? where rid =?", 
				repair.getStaff(),repair.getRid());
	}

}