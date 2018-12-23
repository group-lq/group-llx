<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Validation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="${base}/css/Server/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${base}/css/Server/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="${base}/css/Server/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="${base}/js/Server/jquery-1.11.1.min.js"></script>
<script src="${base}/js/Server/modernizr.custom.js"></script>
 <!--//js-->
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="${base}/css/Server/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${base}/js/Server/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="${base}/js/Server/metisMenu.min.js"></script>
<script src="${base}/js/Server/custom.js"></script>
<link href="${base}/css/Server/custom.css" rel="stylesheet">
<style type="text/css">
		.logined{
			cursor:pointer;
		}
		#d1{
			font-weight: bold;
		}
	</style>
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<jsp:include page="/public/Server/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms validation">
					<h3 class="title1">计协认证管理 :</h3>
					<div class="form-three widget-shadow">
						<h4 style="margin-left: 2%"><span class="logined" onclick="replaced()" id="d1">手&nbsp;机</span>|<span id="d2" class="logined" onclick="replaced1()">邮&nbsp;箱</span> </h4>
					</div>
					<div class="row" id="tel">
						<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
							<div class="form-title">
								<h4>手机发送认证码 :</h4>
							</div>
							<div class="form-body" >
								<form data-toggle="validator" action="${base}/mail.s" method="post">
								<input type="hidden" name="op" value="sendRTel">
									<div class="form-group">
										<input type="text" class="form-control"  placeholder="请输入手机号码" name="tel">
									</div>
									<c:if test="${! empty msg}">
										<script type="text/javascript">
											alert('${msg}');
										</script>
									</c:if>
									<input type="submit" value="发送"class="btn btn-primary disabled" id="btn1">
								</form>
							</div>
						</div>
					</div>
					
					<div class="row" style="display:none;" id="email">
						<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
							<div class="form-title">
								<h4>邮箱发送认证码 :</h4>
							</div>
							<div class="form-body" >
								<form data-toggle="validator">
									<div class="form-group">
										功能还未实现
									</div>
								</form>
							</div>
						</div>
					
					</div>
					
				</div>
			</div>
		</div>
		<jsp:include page="/public/Server/footer.jsp"></jsp:include>
	<!-- Classie -->
		<script src="${base}/js/Server/classie.js"></script>
		<script>
		function replaced(){
			$("#hid").val("Clogin");
			 $("#d1").css("font-weight","bold");
			 $("#d2").css({"font-weight":"normal"});
			 $("#tel").css("display","block");
			 $("#email").css("display","none");
		}
		function replaced1(){
			$("#hid").val("login");
			$("#d2").css("font-weight","bold");
			$("#d1").css({"font-weight":"normal"});
			 $("#email").css("display","block");
			  $("#tel").css("display","none");
		}
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="${base}/js/Server/jquery.nicescroll.js"></script>
	<script src="${base}/js/Server/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="${base}/js/Server/bootstrap.js"> </script>
	<!--validator js-->
	<script src="${base}/js/Server/validator.min.js"></script>
	<!--//validator js-->
</body>
</html>