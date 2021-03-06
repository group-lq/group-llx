package biz;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.dao.ly.DBHelper;

import bean.User;

public class UserBiz {
	DBHelper dbhelper = new DBHelper();
	
	public User login(String username,String userpwd) throws BizException{
		
		if(username == null || username.trim().isEmpty()){
			throw new BizException("请填写用户名");
		}
		if(userpwd == null || userpwd.trim().isEmpty()){
			throw new BizException("请填写密码");
		}
		
		String sql = "select * from user where account=? and pwd =?";
		
		
		return DBHelper.unique(sql, User.class, username,userpwd);
	}
	
	public void add(User user,String repwd) throws BizException{
		System.out.println("密码:"+user.getPwd()+"确认密码:"+repwd);
		if(user.getName().trim().length()<2 || user.getName().trim().length()>5){
			throw new BizException("请输入真实姓名！");
		}
		if(user.getAccount().trim().length()<2 || user.getAccount().trim().length()>8){
			throw new BizException("账号请控制在1~8！");
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
		String sql = "insert into user(name,account,tel,pwd) values(?,?,?,?)";
		//Timestamp t = new Timestamp(System.currentTimeMillis());
		//String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(t);
		//user.setCreateDate(t);
		DBHelper.insert(sql,user.getName(),user.getAccount(),user.getTel()
				,user.getPwd());
	}
	/*public List<User> findAll() {
		return DBHelper.select("select * from user", User.class);
	}
*/
	public Object find(User user) {
		String sql = "select * from user where 1=1";
		ArrayList<Object> params = new ArrayList<Object>(); 
		if(user.getName() != null && ! user.getName().trim().isEmpty()){
			sql += " and name like ?";
			params.add("%"+user.getName()+"%");
		}
		if(user.getAccount() != null && ! user.getAccount().trim().isEmpty()){
			sql += " and account like ?";
			params.add("%"+user.getAccount()+"%");
		}
		if(user.getTel() != null && ! user.getTel().trim().isEmpty()){
			sql += " and tel like ?";
			params.add("%"+user.getTel()+"%");
		}
		return DBHelper.select(sql, params);
	}

	public User findByOne(String id ) {
		return DBHelper.unique("select * from user where id = ?", User.class,id);
	}

	public void save(User user) throws BizException {
		if(user.getAccount() == null || user.getAccount().trim().isEmpty()){
			throw new BizException("请填写用户名!");
		}
		DBHelper.update("update user set name =? ,account=? ,tel=? where id =?", 
				user.getName(),user.getAccount(),user.getTel(),user.getId());
	}
	
}
