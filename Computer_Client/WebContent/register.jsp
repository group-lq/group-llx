<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>计协注册</title>
  <!-- 重置文件 -->
  <link rel="stylesheet" href="${base}/css/Register/normalize.css">
  <link rel="stylesheet" href="${base}/css/Register/style.css">
  <link rel="stylesheet" href="${base}/css/login/style.css" type="text/css" media="all" />
<script type="text/javascript" src="${base}/js/login/jquery-1.8.3-min.js"></script>
  <script src="${base}/js/Client/jquery-1.9.1.min.js"></script>
  
 
  
</head>
<body>
<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<h1>HGACM Register</h1>
	<br>
  <div class="reg_div">
    <p>用户注册</p>
    <form action="${base}/cuser.s">
    <input name="op" value="register" type="hidden">
    	<ul class="reg_ul">
      <li>
          <span>用户名：</span>
          <input type="text" name="username" value="${param.username}" id="username" placeholder="请输入用户名" class="checkmsg" >
          <span class="tip user_hint"></span>
      </li>
      
      <li id="checkNamemsg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li>
          <span>密码：</span>
          <input type="password" name="pwd" value="${param.pwd}" id="pwd" placeholder="请输入8-16位密码" class="checkmsg">
          <span class="tip password_hint"></span>
      </li>
     <li id="checkPwdmsg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li>
          <span>确认密码：</span>
          <input type="password" name="retpwd" value="" id="retPwd" placeholder="确认密码" >
          <span class="tip confirm_hint"></span>
      </li>
      <li id="checkRetPwdmsg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li>
          <span>邮箱：</span>
          <input type="text" name="email" value="${param.email}" placeholder="请输入邮箱" id="email" class="checkmsg" >
          <span class="tip email_hint"></span>
      </li>
      <li id="checkEmailmsg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li>
          <span>手机号码：</span>
          <input type="text" name="tel" value="${param.tel}" placeholder="请输入手机号"  id="tel" class="checkmsg">
          <span class="tip mobile_hint"></span>
      </li>
      <li id="checkTelmsg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li>
          <span>手机验证码：</span>
          <input type="text" name="Code1" value="" placeholder="请输入手机验证码" class="Code" id="Code1" style="width: 120px;float: left;margin-right: 5px">
          <input type="button" id="getCode" value="发送手机验证码" style="width:100px;margin-left: 5px;padding: 0">
      </li>
     
      <li>
          <span>验证码：</span>
          <input type="text" name="Code2" value="" placeholder="请输入验证码" class="Code" id="Code2" value="${picCode}" style="width: 120px;float: left;margin-right: 5px">
		  <img id="imgObj" alt="验证码" src="<c:url value='/image.s' />" onclick="changeImg()" style="width:90px;float: left;cursor:pointer;margin-left: 5px;padding: 0"/>
		  <img alt="" src="${base}/images/Server/refush.jpg" onclick="changeImg()" style="float: left;cursor:pointer;">      
	  </li>
	  <li id="checkCode2msg" style="font-weight: bold;font-size: 15px;color: red;"></li>
      <li style="margin: 20px 0 20px 190px">
      
      <input type="submit" name="button" value="注册" style="align-content: center;width: 120px;padding: 0">
      </li>
    </ul>
    </form>
    
  </div>
  <br>
  <br>
  <br>
  <script type="text/javascript">
	addEventListener("load", function () {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
	
  $(function(){
	  $(".Code").on("blur",function(){
		  var name = $(this).attr("name");
			if(name == 'Code2'){
			 var Code2 = $("#Code2").val();
			 $.ajax({
					url:'cuser.s?op=isCode2',
					type:'get',
					processDate:false,
					contentType:false,
					data:"Code2="+Code2,
					success: function(data){
						var data = JSON.parse(data);
						 if(data.checkMsg == null ){
							$("#checkCode2msg").text("");
						}
						$("#checkCode2msg").text(data.checkMsg);
						
					}
				});
			}else{
				var Code1 = $("#Code1").val();
				 $.ajax({
						url:'mail.s?op=isTelCode',
						type:'get',
						processDate:false,
						contentType:false,
						data:"Code1="+Code1,
						success: function(data){
							var data = JSON.parse(data);
							 if(data.checkMsg == null ){
								$("#checkCode1msg").text("");
							}
							$("#checkCode1msg").text(data.checkMsg);
							
						}
					});
			}
		 });
  });
  
	 
  
  // 刷新图片  
  function changeImg() {  
      var imgSrc = $("#imgObj");  
      var src = imgSrc.attr("src");
      imgSrc.attr("src", changeUrl(src));
     
  }  
  //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳  
  function changeUrl(url) {  
      var timestamp = (new Date()).valueOf();  
      var index = url.indexOf("?",url);  
      if (index > 0) {  
          url = url.substring(index, url.indexOf(url, "?"));  
      }  
      if ((url.indexOf("&") >= 0)) {  
          url = url + "×tamp=" + timestamp;  
      } else {  
          url = url + "?timestamp=" + timestamp;  
      }
      return url;  
  }  
//手机验证码
  $(function(){
		$('#getCode').on("click",function(){
			var tel = $("#tel").val();
			//alert(email);
	  			$.ajax({
					url:'mail.s?op=getTelCode',
					type:'get',
					processDate:false,
					contentType:false,
					data:"tel="+tel,
					success: function(data){
						var data = JSON.parse(data);
						$("#getBtn").text(data.checkMsg);
						 $("#getBtn").attr("disabled",true);
					}
				});
		})
	});
  $(function(){
	  $("#retPwd").on("blur",function(){
		  var date ={};
		  date.pwd = $("#pwd").val();
		  date.retPwd = $("#retPwd").val();
		  $.post("cuser.s?op=checkRetPwd",date,function(data){
			  var data = JSON.parse(data);
				if(data.checkMsg == null ){
					$("#checkRetPwdmsg").text("");
				}
					$("#checkRetPwdmsg").text(data.checkMsg);
				
					
		  });
	  })
  });
   $(function(){
		$('.checkmsg').on("blur",function(){
			var name = $(this).attr("name");
			if(name == 'email'){
				var email = $("#email").val();
				$.ajax({
				url:'cuser.s?op=checkEmail',
				type:'get',
				processDate:false,
				contentType:false,
				data:"email="+email,
				success: function(data){
					var data = JSON.parse(data);
					if(data.checkMsg == null ){
						$("#checkEmailmsg").text("");
					}
						$("#checkEmailmsg").text(data.checkMsg);
					
						
				}
			});
			}else if(name == 'tel'){
				var tel = $("#tel").val();
				$.ajax({
					url:'cuser.s?op=checkTel',
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
			} else if(name == 'pwd'){
				var pwd = $("#pwd").val();
				$.ajax({
					url:'cuser.s?op=checkPwd',
					type:'get',
					processDate:false,
					contentType:false,
					data:"pwd="+pwd,
					success: function(data){
						var data = JSON.parse(data);
						if(data.checkMsg == null ){
							$("#checkPwdmsg").text("");
						}
							$("#checkPwdmsg").text(data.checkMsg);
					}
				});
			} else{
				var username = $("#username").val();
				$.ajax({
					url:'cuser.s?op=checkName',
					type:'get',
					processDate:false,
					contentType:false,
					data:"username="+username,
					success: function(data){
						var data = JSON.parse(data);
						if(data.checkMsg == null){
							$("#checkNamemsg").text("");
						}
						$("#checkNamemsg").text(data.checkMsg);
					}
				});
			}
		})
	}); 
  </script>
    <script src="${base}/js/login/jquery-3.3.1.min.js"></script>
	<script src="${base}/js/login/canva_moving_effect.js"></script>
 <%--  <script type="text/javascript" src="${base}/js/Register/jquery.min.js"></script>
  <script type="text/javascript" src="${base}/js/Register/script.js"></script> --%>
 <%--  <c:if test="${! empty picCode}">
  	<script type="text/javascript">
		alert('${picCode}');
	</script>
  </c:if> --%>
</body>
</html>

