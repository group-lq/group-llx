package com.yc.dao;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.yc.bean.User;

public class RegexUtils {
	/**
     * 验证邮箱
     * @param email
     * @return
     */
    public static boolean checkEmail(User user){
        boolean flag = false;
        try{
                String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
                Pattern regex = Pattern.compile(check);
                Matcher matcher = regex.matcher(user.getEmail());
                flag = matcher.matches();
            }catch(Exception e){
                flag = false;
            }
        return flag;
    }
    /**
     	* 验证手机号码
     * @param mobiles
     * @return
     */
    public static boolean checkMobileNumber(User user){
        boolean flag = false;
        try{
                Pattern regex = Pattern.compile("^[1](([3][0-9])|([4][5,7,9])|([5][4,5,6,9])|([6][6])|([7][3,5,6,7,8])|([8][0-9])|([9][8,9]))[0-9]{8}$");
                Matcher matcher = regex.matcher(user.getTel());
                flag = matcher.matches();
            }catch(Exception e){
                flag = false;
            }
        return flag;
    }
  
   /**
    * 密码检查
    * @param user
    * @return 
    * 由数字和字母组成，并且要同时含有数字和字母，且长度要在8-16位之间
    * 
    */
    public static boolean checkPwd(User user) {
    	boolean flag = false;
	    try{
	        Pattern regex = Pattern.compile("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$");
	        Matcher matcher = regex.matcher(user.getPwd());
	        flag = matcher.matches();
	    }catch(Exception e){
	        flag = false;
	    }
	    return flag;
    	
    }
    /**
     * 用户名
     * 汉字、字母、数字的组合
     * @param user
     * @return
     */
    public static boolean checkUserName(User user) {
    	boolean flag = false;
	    try{
		    Pattern regex = Pattern.compile("^(?!_)(?!.*?_$)[a-zA-Z0-9_\\u4e00-\\u9fa5]+$"); 
		    Matcher matcher = regex.matcher(user.getUsername());
	        flag = matcher.matches();
	    }catch(Exception e){
	        flag = false;
	    }
	   
	    return flag;
	    //return matcher.replaceAll("").trim();
    } 
     public static void main(String[] args) {
	    //System.out.println(checkEmail("14_8@qw.df"));//true
	    //System.out.println(checkMobileNumber("071-3534452"));//flase
    	 User user = new User();
    	 user.setUsername("??z");
    	 user.setPwd("1");
    	 System.out.println(RegexUtils.checkUserName(user));
    	 //System.out.println(RegexUtils.checkPwd(user));
     }
  
}
