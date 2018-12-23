<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>General Elements</title>
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
			<div class="main-page general">
				<h3 class="title1">General Elements</h3>
				<div class="panel-info widget-shadow">
					<h4 class="title2">Contextual alternatives :</h4>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-default"> <div class="panel-heading"> <h3 class="panel-title">Panel Default</h3> </div> <div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus.</div> </div>
					</div>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-primary"> <div class="panel-heading"> <h3 class="panel-title">Panel Primary</h3> </div> <div class="panel-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus. </div> </div>
					</div>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-success"> <div class="panel-heading"> <h3 class="panel-title">Panel Success</h3> </div> <div class="panel-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus. </div> </div>
					</div>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-info"> <div class="panel-heading"> <h3 class="panel-title"> Panel Info</h3> </div> <div class="panel-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus. </div> </div>
					</div>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-warning"> <div class="panel-heading"> <h3 class="panel-title">Panel Warning</h3> </div> <div class="panel-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus.</div> </div>
					</div>
					<div class="col-md-6 panel-grids">
						<div class="panel panel-danger"> <div class="panel-heading"> <h3 class="panel-title">Panel Danger</h3> </div> <div class="panel-body"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin iaculis quam sit amet nisi dictum, in iaculis dolor lobortis. Aenean placerat purus non faucibus. </div> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				
				
							<div class="panel-group tool-tips widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
					<h4 class="title2"> Accordion example :</h4>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
					  <h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						  Product 1
						</a>
					  </h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					  <div class="panel-body">
						Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
					  <h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							Product 2
						</a>
					  </h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					  <div class="panel-body">
						Eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit, enim  Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
					  <h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							Product 3
						</a>
					  </h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					  <div class="panel-body">
						3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.  apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
					  <h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
							Product 4
						</a>
					  </h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
					  <div class="panel-body">
						Cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
					  </div>
					</div>
				  </div>
				  <div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
					  <h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
							Product 5
						</a>
					  </h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
					  <div class="panel-body">
						Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
					  </div>
					</div>
				  </div>
				</div>
				
				
				
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