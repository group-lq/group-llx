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
	
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function replaced(){
			$(location).attr('href', 'ForgetPwd/forgetMyPwdTel.jsp');
			 $("#d1").css("font-weight","bold");
			 $("#d2").css({"font-weight":"normal"});
			
		}
		
		function replaced1(){
			$(location).attr('href', 'ForgetPwd/forgetMyPwdEmail.jsp');
			$("#d2").css({"font-weight":"bold"});
			$("#d1").css({"font-weight":"normal"});
		}
		$(function(){
			$('.format').on("blur",function(){
				var name = $(".format");
				console.log(name.attr("name"));
				console.log($(".c_email").css('display'));
				if(name.attr("name")=='tel' ){
					 var tel = $("#i_tel").val();
			  			$.ajax({
							url:'user.s?op=checkTel',
							type:'get',
							processDate:false,
							contentType:false,	
							data:"tel="+tel,
							success: function(data){
								var data = JSON.parse(data);
								if(data.checkMsg == null ){
									$("#checkTelmsg").text("");
								}
								$("#checkTelmsg").text(data.checkMsg);
							}
						});
				}
			})
			 
		});
		
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
	<h1>Retrieve PWD</h1>
	<br>
			<h2 id="h2"><span class="logined" onclick="replaced()" id="d1">手机找回</span>|<span id="d2" class="logined" onclick="replaced1()">邮箱找回</span>
				<i class="fas fa-level-down-alt"></i>
			</h2>
				<div class="web-width"  "><!-- 验证身份 -->
				 <div class="for-liucheng">
			      <div class="liulist for-cur"></div>
			      <div class="liulist for-cur"></div>
			      <div class="liulist"></div>
			      <div class="liulist"></div>
			      <div class="liutextbox">
			       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
			       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
			       <div class="liutext"><em>3</em><br /><strong>设置新密码</strong></div>
			       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
			      </div>
			     </div><!--for-liucheng/-->
			     <form action="" method="post" class="forget-pwd">
			     <input type="hidden" name="op" value="getTel">
			       <dl  class="c_tel">
			        <dt style="font-weight: bold;font-size: 16px;color: silver;">手机号：</dt>
			        <dd ><input type="text" name="tel" id="i_tel" class="format" value="${param.tel}" required /><span id="checkTelmsg" style="font-weight: bold;font-size: 18px;color: red;"></span></dd>
			        <div class="clears"></div>
			       </dl>
			       <dl class="tel">
			        <dt style="font-weight: bold;font-size: 16px;color: silver;">手机校验码：</dt>
			        <dd><input type="text" required=""/> <button>获取短信验证码</button></dd>
			        <div class="clears"></div>
			       </dl>
			       
			       <div class="subtijiao"><input type="button" value="提交" class="easyui-linkbutton" /></div> 
			       
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