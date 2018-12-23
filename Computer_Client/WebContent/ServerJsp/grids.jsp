<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>添加文章</title>
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
		<form action="../SArticleAdd.s" method="post">
		<input type="hidden" name="op" value="AddArticle">
			<div class="main-page">
				<h3 class="title1">添加文章</h3>
				<div class="grids widget-shadow">

					<div class="form-group">
						<div class="row">
							<div class="col-md-12">
								<input type="text" class="form-control1" placeholder="标题" name="title">
							</div>
							<div class="clearfix"> </div>
							<div class="clearfix"> </div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-md-12">
								<input type="text" class="form-control1" placeholder="作者" name="author">
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>	
					<div class="form-group">
						<div class="row">
							<div class="col-md-12">
								<input type="text" class="form-control1" placeholder="简要描述" name="description">
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>	
					<div class="form-group">
						<div class="row">
							<div class="col-md-12">
								<textarea style="width: 795px;height: 200px" placeholder="正文" name="content"></textarea>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-12">
								<input type="submit" name="submit" value="提交" style="margin-left: 400px;" > 
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<h3 class="title1">引导网格细节</h3>
				<div class="grid-bottom widget-shadow">
					<table class="table table-bordered table-striped no-margin grd_tble">
						<thead>
							<tr>
								<th></th>
								<th>
									Extra small devices
									<small>Phones (&lt;768px)</small>
								</th>
								<th>
									Small devices
									<small>Tablets (≥768px)</small>
								</th>
								<th>
									Medium devices
									<small>Desktops (≥992px)</small>
								</th>
								<th>
									Large devices
									<small>Desktops (≥1200px)</small>
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Max container width</th>
								<td>None (auto)</td>
								<td>750px</td>
								<td>970px</td>
								<td>1170px</td>
							</tr>
							<tr>
								<th>Class prefix</th>
								<td><code>.col-xs-</code></td>
								<td><code>.col-sm-</code></td>
								<td><code>.col-md-</code></td>
								<td><code>.col-lg-</code></td>
							</tr>
							<tr>
								<th># of columns</th>
								<td colspan="4">12</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</form>
			
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
<c:if test="${ !empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>