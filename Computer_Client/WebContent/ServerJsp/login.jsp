<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>异清轩博客管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/Server/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/Server/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/Server/login.css">
<link rel="apple-touch-icon-precomposed" href="${pageContext.servletContext.contextPath}/images/Server/icon/icon.png">
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath}/images/Server/icon/favicon.ico">
<script src="${pageContext.servletContext.contextPath}/js/Server/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>

<body class="user-select">
<div class="container">
  <div class="siteIcon"><img src="${pageContext.servletContext.contextPath}/images/Server/icon/icon.png" alt="" data-toggle="tooltip" data-placement="top" title="欢迎使用计协管理系统" draggable="false" /></div>
  <form action="index.html" method="post" autocomplete="off" class="form-signin">
    <h3 class="form-signin-heading">管理员登录</h3>
    <!-- <span class="form-signin-heading">管理员登录</span> -->
    <label for="userName" class="sr-only">用户名</label>
    <input type="text" id="userName" name="username" class="form-control" placeholder="请输入用户名" required autofocus autocomplete="off" maxlength="10">
    <label for="userPwd" class="sr-only">密码</label>
    <input type="password" id="userPwd" name="userpwd" class="form-control" placeholder="请输入密码" required autocomplete="off" maxlength="18">
    <a href="main.html"><button class="btn btn-lg btn-primary btn-block" type="submit" id="signinSubmit">登录</button></a>
  </form>
  <div class="footer">
    <p><a href="${pageContext.servletContext.contextPath}/ClientJsp/CLogin.jsp" data-toggle="tooltip" data-placement="left" title="不知道自己在哪?">会员登录 →</a></p>
  </div>
</div>
<script src="js/Server/bootstrap.min.js"></script> 
<script>
$('[data-toggle="tooltip"]').tooltip();
window.oncontextmenu = function(){
	//return false;
};
$('.siteIcon img').click(function(){
	window.location.reload();
});
$('#signinSubmit').click(function(){
	if($('#userName').val() === ''){
		$(this).text('用户名不能为空');
	}else if($('#userPwd').val() === ''){
		$(this).text('密码不能为空');
	}else{
		$(this).text('请稍后...');
	}
});
</script>
</body>
</html>