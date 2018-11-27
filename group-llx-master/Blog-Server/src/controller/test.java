package controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import bean.User;

public class test {
	public static void main(String[] args) {
		User user = new User();
		Timestamp t = new Timestamp(System.currentTimeMillis());
		String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(t);
		System.out.println("q"+user.getCreateDate()+":"+sdf+"t:"+t);
		
	}
}
