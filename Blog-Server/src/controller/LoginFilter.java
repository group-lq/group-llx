package controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 访问权限控制
 * @author Administrator
 *
 */
@WebFilter(urlPatterns={
		"*.jsp","*.s"
})
public class LoginFilter implements Filter {


	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String path = httpRequest.getServletPath();
		if(path.endsWith("user.s") || path.endsWith("login.jsp")){
			chain.doFilter(request, response);
			return;
		}
		System.out.println("进来了吗？");
		/*if(httpRequest.getSession().getAttribute("LoginedUser") == null){
			request.setAttribute("msg", "请先登录！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}*/
		//正常业务必须执行 过滤器链的doFilter
		chain.doFilter(request, response);
	}


	public void init(FilterConfig fConfig) throws ServletException {
	}

}
