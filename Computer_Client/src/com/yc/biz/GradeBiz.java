package com.yc.biz;

import com.yc.bean.Grades;
import com.yc.dao.DBHelper;

public class GradeBiz {

	public Grades login(String idenno, String subject, String name) throws BizException {
		if(idenno == null || idenno.trim().isEmpty()) {
			throw new BizException("请填写身份证号");
		}
		if(name == null || name.trim().isEmpty()) {
			throw new BizException("请填写姓名");
		}
		String sql = "select * from grades where idenno = ? and  name = ? and subject = ? ";
		return DBHelper.unique(sql,Grades.class,idenno,name,subject);
	}

}
