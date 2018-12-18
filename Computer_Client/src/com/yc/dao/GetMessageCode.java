package com.yc.dao;



import java.io.BufferedReader;
import org.apache.commons.codec.digest.DigestUtils;

import com.yc.bean.User;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 
 * @Title:GetMessageCode
 * @Description:发送验证码
 * @author:ヅ零碎de記憶ぷ
 * @Date 2018年7月4日 下午9:27:04
 */
public class GetMessageCode {
	public static final String Query_URL = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";
	private static final String ACCOUNT_SID = "5d1939586e9b48ecafde48bcd96dcb12";
	public static final String AUTH_TOKEN = "cda53741710b4033ba6549abd07ac529";
	//private static String to = "17674765600";
	public static final String RESP_DATA_TYPE = "json";
	
	/**
	 * 验证码通知短信
	 */
	public static void execute(User user,String code ){
		String tmpSmsContent = null;
		String smsContent = "【源辰科技】尊敬的用户，您好，您的验证码为"+code+"，请于1分钟内正确输入，如非本人操作，请忽略此短信。";
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    String body = "accountSid=" + ACCOUNT_SID + "&to=" + user.getTel() + "&smsContent=" + tmpSmsContent
	        + createCommonParam();

	    // 提交请求
	    String result = post(Query_URL, body);
	    System.out.println("result:" + System.lineSeparator() + result);
	}
	
	/**
	 * 构造通用参数timestamp、sig和respDataType
	 * 
	 * @return
	 */
	public static String createCommonParam(){
		// 时间戳
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String timestamp = sdf.format(new Date());

		// 签名
		String sig = DigestUtils.md5Hex(ACCOUNT_SID + AUTH_TOKEN + timestamp);

		return "&timestamp=" + timestamp + "&sig=" + sig + "&respDataType=" + RESP_DATA_TYPE;
	}

	/**
	 * post请求
	 * 
	 * @param url
	 *            功能和操作
	 * @param body
	 *            要post的数据
	 * @return
	 * @throws IOException
	 */
	public static String post(String url, String body){
		System.out.println("url:" + System.lineSeparator() + url);
		System.out.println("body:" + System.lineSeparator() + body);

		String result = "";
		try{
			OutputStreamWriter out = null;
			BufferedReader in = null;
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();

			// 设置连接参数
			conn.setDoOutput(true);
			conn.setDoInput(true);
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(20000);
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			// 提交数据
			out = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");
			out.write(body);
			out.flush();

			// 读取返回数据
			in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = "";
			boolean firstLine = true; // 读第一行不加换行符
			while ((line = in.readLine()) != null){
				if (firstLine){
					firstLine = false;
				} else{
					result += System.lineSeparator();
				}
				result += line;
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 回调测试工具方法
	 * 
	 * @param url
	 * @param reqStr
	 * @return
	 */
	public static String postHuiDiao(String url, String body){
		String result = "";
		try{
			OutputStreamWriter out = null;
			BufferedReader in = null;
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();

			// 设置连接参数
			conn.setDoOutput(true);
			conn.setDoInput(true);
			conn.setConnectTimeout(5000);
			conn.setReadTimeout(20000);

			// 提交数据
			out = new OutputStreamWriter(conn.getOutputStream(), "UTF-8");
			out.write(body);
			out.flush();

			// 读取返回数据
			in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = "";
			boolean firstLine = true; // 读第一行不加换行符
			while ((line = in.readLine()) != null){
				if (firstLine){
					firstLine = false;
				} else{
					result += System.lineSeparator();
				}
				result += line;
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}
	//发送验证码
	public static String smsCode() {
		String random = (int) ((Math.random() * 9 + 1) * 100000) + "";
		return random;
	}
	public static void main(String[] args) throws IOException {
		User user = new User();
		user.setTel("15678898161");
		execute(user,smsCode());
	}
}




