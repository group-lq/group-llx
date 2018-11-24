package com.yc.dao;

public class Test {
	public static void main(String[] args) {
		DBHelper helper = new DBHelper();
		System.out.println("1");
		System.out.println(helper.find("select * from user", null));
	}
}
