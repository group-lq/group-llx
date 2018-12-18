<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="zh-CN">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content=""/>
	<title>Login</title>
	<script src="${base}/js/login/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="${base}/js/login/jquery-1.8.3-min.js"></script>
	<link rel="stylesheet" href="${base}/css/login/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${base}/css/login/fontawesome-all.css">
	<link rel="stylesheet" type="text/css" href="${base}/css/Server/login.css">
	<link type="text/css" href="${base}/css/login/css.css" rel="stylesheet" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
		
		
	</script>
	<style type="text/css">
		.logined{
			cursor:pointer;
		}
		#h2{
			text-align: center;
		}
		#d1{
			font-weight: bold;
		}
	</style>
	
</head>
<body>
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<h1>HGACM Register</h1>
	<br>
	<br>		
	<br>
	<p>用户注册</p>	    
			
			<div class="successs" ">
			 
		       <h3>恭喜您,注册成功！</h3>
		       <h2 id="h2"><a href="Nlogin.jsp"  id="d1">快去登录吧!</a>
				<i class="fas fa-level-down-alt"></i>
			</h2>
		        
		    </div>
			
				
			
		   
		</div>
	<script src="${base}/js/login/jquery-3.3.1.min.js"></script>
	<script src="${base}/js/login/canva_moving_effect.js"></script>
	<!-- <script type="text/javascript">
	function check(){
		var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
		var obj = $("#username"); //要验证的对象
		if(!reg.test(obj.value)){ //正则验证不通过，格式不对
			$("#msg").text("邮箱格式错误");
			return false;
		}else{
			$("#msg").text("通过");
			return true;
		}
		}
	</script> -->
</body>
<c:if test="${ ! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>