package com.yc.biz;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.yc.bean.Comment;
import com.yc.bean.News;
import com.yc.bean.User;
import com.yc.dao.DBHelper;
import com.yc.dao.RegexUtils;
import com.yc.biz.BizException;

public class UserBiz {
DBHelper dbhelper = new DBHelper();
	
	public User login(String username,String userpwd) throws BizException{
		
		if(username == null || username.trim().isEmpty()){
			throw new BizException("请填写用户名");
		}
		if(userpwd == null || userpwd.trim().isEmpty()){
			throw new BizException("请填写密码");
		}
		String sql = "select * from user where username=? and pwd =?";
		return DBHelper.uniqueObject(sql, User.class, username,userpwd);

	}
	public void update(User user, String tel) throws BizException {
		String sql = "update  user set username = ?,pwd=?,email=?,enterTime=?"
				+ ",type=? ,cost=? where tel = ?";
		user = findByTel(user);
		if(user.getTel() != tel){
			throw new BizException("手机号码与认证手机不一致");
		}
		Timestamp t = new Timestamp(System.currentTimeMillis());
		user.setCost("未交");
		user.setType("会员");
		DBHelper.update(sql, user.getUsername(),user.getPwd(),user.getEmail(),tel,t,user.getType(),user.getCost());
	}
	public List<List<Object>> addUser(User user,String repwd) {
		String sql = "insert into user(username,tel,pwd,email,cost,enterTime,type) values(?,?,?,?,?,?,?)";
		Timestamp t = new Timestamp(System.currentTimeMillis());
		user.setCost("未交");
		user.setType("会员");
		return DBHelper.insert(sql,user.getUsername(),user.getTel(),user.getPwd()
				,user.getEmail(),user.getCost(),t,user.getType());
	}
	
	public void add(User user,String repwd) throws BizException{
		
		if(user.getUsername().trim().length()<2 || user.getUsername().trim().length()>5){
			throw new BizException("请输入真实姓名！");
		}
			
		if(user.getTel().trim().isEmpty() || user.getTel() == null){
			throw new BizException("电话为必填字段");
			
		}else if(user.getTel().trim().length()<2 || user.getTel().trim().length()>5){
			throw new BizException("请输入真实电话号码！");
		}
		
		if(user.getPwd().trim().length()<2 || user.getPwd().trim().length()>5){
			throw new BizException("请输入2~5密码！");
		}
		if(!user.getPwd().equals(repwd)){
			
			throw new BizException("密码与确认密码不一致");
		}
		String sql = "insert into user(username,tel,pwd,email,cost,enterTime,type) values(?,?,?,?,?,?,?)";
		Timestamp t = new Timestamp(System.currentTimeMillis());
		//String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(t);
		//user.setCreateDate(t);
		user.setCost("未交");
		user.setType("会员");
		DBHelper.insert(sql,user.getUsername(),user.getTel(),user.getPwd()
				,user.getEmail(),user.getCost(),t,user.getType());
	}
	/*public List<User> findAll() {
		return DBHelper.select("select * from user", User.class);
	}
*/
	public Object find(User user) {
		String sql = "select * from user where 1=1";
		ArrayList<Object> params = new ArrayList<Object>(); 
		if(user.getUsername() != null && ! user.getUsername().trim().isEmpty()){
			sql += " and name like ?";
			params.add("%"+user.getUsername()+"%");
		}		
		if(user.getTel() != null && ! user.getTel().trim().isEmpty()){
			sql += " and tel like ?";
			params.add("%"+user.getTel()+"%");
		}
		return DBHelper.select(sql, params);
	}

	public User findByOne(String id ) {
		return DBHelper.uniqueObject("select * from user where id = ?", User.class,id);
	}

	public void save(User user) throws BizException {
		if(user.getUsername() == null || user.getUsername().trim().isEmpty()){
			throw new BizException("请填写用户名!");
		}
		DBHelper.update("update user set name =? ,account=? ,tel=? ,where id =?", 
				user.getUsername(),user.getTel(),user.getId());
	}

	public Object findDirector(User user) {
		String sql = "select * from user where type= ?";
		user.setType("理事");
		return DBHelper.select(sql,user.getType());
	}

	public User findByName(User user) {
		String sql = "select * from user where username = ?";
		return DBHelper.uniqueObject(sql, User.class, user.getUsername());
	}

	public User findByEmail(User user)  {
		String sql = "select * from user where email =?";
		
		return DBHelper.uniqueObject(sql, User.class, user.getEmail());
	}

	public User findByTel(User user)  {
		String sql = "select * from user where tel =?";
		return DBHelper.uniqueObject(sql, User.class, user.getTel());
	}

	public int modify(User user, String retPwd,String username)
			throws BizException {
		String sql = "update user set pwd = ? where username = ? ";
		System.out.println(user.getPwd()+":"+retPwd);
		if("".equals(user.getPwd()) && user.getPwd().trim().isEmpty()) {
			throw new BizException("请填写新密码");
		}
		 
		if(!RegexUtils.checkPwd(user)) {
			throw new BizException("密码格式不对");
		}
		if(!retPwd.equals(user.getPwd()) ) {
			throw new BizException("新密码与确认密码不一致");
		}
		return DBHelper.update(sql, user.getPwd(),username);
	}

	

	public Object findById(User user) {
		String sql = "select id from user where username = ?";
		return DBHelper.uniqueValue(sql, "id", user.getUsername());
	}
	
	
	/**
	 * 添加评论  
	 * @param c
	 */
	public List<List<Object>> insertComment(Comment c) {
		String sql = "insert into comment values(?,?,?,?,?)";
		return DBHelper.insert(sql,c.getCommentId(),c.getCommentTime(),c.getUserId(),c.getNewsId(),c.getContent());
	}

	/**
	 * 根据新闻id查找评论内容
	 * @param newId
	 * @return
	 */
	public List<Comment> findCommentByNews(Long newId) {
		String sql = "select * from comment where newsid=?";
		List<Comment> cList = DBHelper.select(sql,Comment.class, newId);  //查到了所有的评论
		for(Comment c1 : cList) {
			sql = "select * from user where id=?";
			User user = DBHelper.uniqueObject(sql, User.class, c1.getUserId());
			c1.setUser(user);
			
			sql = "select * from news where newsid=?";
			News news = DBHelper.uniqueObject(sql, News.class, c1.getNewsId());
			c1.setNews(news);
		}
		return cList;
	}
	public void addTel(User user, String random) {
		String sql = "insert into user(tel,attestationcode,cost) value(?,?,?)";
		user.setCost("已交");
		DBHelper.insert(sql, user.getTel(),random,user.getCost());
	}

	

	

	

}
