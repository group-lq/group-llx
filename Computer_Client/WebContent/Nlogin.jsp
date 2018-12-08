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

	<link rel="stylesheet" href="${base}/css/login/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${base}/css/login/fontawesome-all.css">
	<link rel="stylesheet" type="text/css" href="${base}/css/Server/login.css">
	
	<!-- <link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"> -->
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function replaced(){
			$("#hid").val("Clogin");
			 $("#d1").css("font-weight","bold");
			 $("#d2").css({"font-weight":"normal"});
			console.log($("#hid").val());
		}
		function replaced1(){
			$("#hid").val("login");
			$("#d2").css("font-weight","bold");
			$("#d1").css({"font-weight":"normal"});
			console.log($("#hid").val());
		}
		function pic(){
			var name = $("#username").val();
  			$.ajax({
				url:'user.s?op=pic',
				type:'get',
				processDate:false,
				contentType:false,
				data:"username="+name,
				success: function(data){
					var data = JSON.parse(data);
					if(data != null){
						$('#img').attr('src', 'images/Server/'+data);
					}else{
						$('#img').attr('src', 'images/Server/1.png');
					}
				}
			}
				
			);
		}	
	</script>
	<style type="text/css">
		.logined{
			cursor:pointer;
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
	<h1>HGACM Login</h1>
	 <div class="siteIcon"><img src="${base}/images/Server/1.png" id ="img" alt="" data-toggle="tooltip" data-placement="top" title="欢迎使用计协管理系统" draggable="false" /></div>
	<div class="sub-main-w3">
		<form action="${base}/user.s" method="post">
		<input type="hidden" name="op" value="Clogin" id="hid">
			<h2><span class="logined" onclick="replaced()" id="d1">会员登录</span>|<span id="d2" class="logined" onclick="replaced1()">管理员登录</span>
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<div class="form-style-agile">
				<label><i class="fas fa-user"></i>用户名</label>
				<input placeholder="用户名/邮箱/手机号" name="username" id="username" type="text" value="${param.username}" required="" onblur="pic()"><span id="msg"></span>
			</div>
			<div class="form-style-agile">
				<label><i class="fas fa-unlock-alt"></i>密码</label>
				<input placeholder="请输入密码" name="userpwd" type="password" required="">
			</div>
			<div class="wthree-text">
				<ul>
					<li>
						<label class="anim">
							<input type="checkbox" class="checkbox" name="checkbox">
							<span>七天免登陆</span>
						</label>
					</li>
					<li>
						<a href="forgetPwd.jsp">忘记密码?</a> 还没有账号?<a href="${base}/ClientJsp/login.jsp">马上注册</a>
					</li>
				</ul>
			</div>
			<input type="submit" value="登陆">
		</form>
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