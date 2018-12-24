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
	
		
		function pic(){
			var name = $("#usernam").val();
  			$.ajax({
				url:'user.s?op=pic',
				type:'get',
				processDate:false,
				contentType:false,
				data:"username="+name,
				success: function(data){
					var data = JSON.parse(data);
					if(data != null){
						$('#img').attr('src', 'images/Server/'+data.pic);
					}else{
						$('#img').attr('src', 'images/Server/1.png');
					}
				}
			});
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
	<div class="sub-main-w3">
		<form action="${base}/mail.s" method="post">
		<input type="hidden" name="op" value="attesta" id="hid">
			<h2><span class="logined" >计协成员认证</span>
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<div class="form-style-agile" id="telCost">
				<label><i class="fas fa-user"></i>手机号</label>
				<input placeholder="请输入手机号" name="tel" id="tel" type="text" value="${param.tel}" ><span id="msg"></span>
			</div>
			
			<div class="form-style-agile">
				<label><i class="fas fa-user"></i>认证码</label>
				<input placeholder="请输入认证码" name="attestation" id="attestation" type="text" value="" ><span id="msg"></span>
			</div>
			
			<div class="wthree-text">
				<ul>
					<li>
						没有认证码?<a href="register.jsp">无认证码注册</a>
					</li>
				</ul>
			</div>
			<input type="submit" value="认证">
		</form>
	</div>
	<script src="${base}/js/login/jquery-3.3.1.min.js"></script>
	<script src="${base}/js/login/canva_moving_effect.js"></script>
	
</body>
<c:if test="${ ! empty loginmsg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>