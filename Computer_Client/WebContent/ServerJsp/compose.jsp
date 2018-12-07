<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Compose mail</title>
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
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<jsp:include page="/public/Server/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page compose">
				<div class="col-md-4 compose-left">
					<div class="folder widget-shadow">
						<ul>
							<li class="head">Folders</li>
							<li><a href="inbox.html"><i class="fa fa-inbox"></i>Inbox <span>52</span></a></li>
							<li><a href="#"><i class="fa fa fa-envelope-o"></i>Sent </a></li>
							<li><a href="#"><i class="fa fa-file-text-o"></i>Drafts <span>03</span></a> </li>
							<li><a href="#"><i class="fa fa-flag-o"></i>Spam </a></li>
							<li><a href="#"><i class="fa fa-trash-o"></i>Trash</a></li>
						</ul>
					</div>
					<div class="chat-grid widget-shadow">
						<ul>
							<li class="head">Friends (Online) </li>
							<li><a href="#">
									<div class="chat-left">
										<img class="img-circle" src="${base}/images/Server/i1.png" alt="">
										<label class="small-badge"></label>
									</div>
									<div class="chat-right">
										<p>Andrew Josifn</p>
										<h6>Nullam quis risus eget </h6>
									</div>
									<div class="clearfix"> </div>	
								</a>
							</li>
							<li><a href="#">
									<div class="chat-left">
										<img class="img-circle" src="${base}/images/Server/i2.png" alt="">
										<label class="small-badge bg-green"></label>
									</div>
									<div class="chat-right">
										<p>Justen Ferry</p>
										<h6>Urna mollis ornare vel</h6>
									</div>
									<div class="clearfix"> </div>	
								</a>
							</li>
							<li><a href="#">
									<div class="chat-left">
										<img class="img-circle" src="${base}/images/Server/i3.png" alt="">
										<label class="small-badge bg-green"></label>
									</div>
									<div class="chat-right">
										<p>Brown Andy </p>
										<h6>Quis risus ullam neget </h6>
									</div>
									<div class="clearfix"> </div>	
								</a>
							</li>
							<li><a href="#">
									<div class="chat-left">
										<img class="img-circle" src="${base}/images/Server/i4.png" alt="">
										<label class="small-badge"></label>
									</div>
									<div class="chat-right">
										<p>Deos Jhon</p>
										<h6>Mollis ornare Urna vel</h6>
									</div>
									<div class="clearfix"> </div>	
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-8 compose-right widget-shadow">
					<div class="panel-default">
						<div class="panel-heading">
							Compose New Message 
						</div>
						<div class="panel-body">
							<div class="alert alert-info">
								Please fill details to send a new message
							</div>
							<form class="com-mail">
								<input type="text" class="form-control1 control3" placeholder="To :">
								<input type="text" class="form-control1 control3" placeholder="Subject :">
								<textarea rows="6" class="form-control1 control2" placeholder="Message :" ></textarea>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fa fa-paperclip"></i> Attachment
										<input type="file" name="attachment">
									</div>
									<p class="help-block">Max. 32MB</p>
								</div>
								<input type="submit" value="Send Message"> 
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
		<jsp:include page="/public/Server/footer.jsp"></jsp:include>
	</div>
	<!-- Classie -->
		<script src="${base}/js/Server/classie.js"></script>
		<script>
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
</body>
</html>