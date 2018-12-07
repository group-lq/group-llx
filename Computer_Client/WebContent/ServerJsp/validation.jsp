<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<jsp:include page="/public/Server/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms validation">
					<h3 class="title1">Validation Forms :</h3>
					<div class="form-three widget-shadow">
						<div data-example-id="form-validation-states"> 
							<form> <div class="form-group has-success"> <label class="control-label" for="inputSuccess1">Input with success</label> <input type="text" class="form-control" id="inputSuccess1" aria-describedby="helpBlock2"> <span id="helpBlock2" class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span> </div> <div class="form-group has-warning"> <label class="control-label" for="inputWarning1">Input with warning</label> <input type="text" class="form-control" id="inputWarning1"> </div> <div class="form-group has-error"> <label class="control-label" for="inputError1">Input with error</label> <input type="text" class="form-control" id="inputError1"> </div> <div class="has-success"> <div class="checkbox"> <label> <input type="checkbox" id="checkboxSuccess" value="option1"> Checkbox with success </label> </div> </div> <div class="has-warning"> <div class="checkbox"> <label> <input type="checkbox" id="checkboxWarning" value="option1"> Checkbox with warning </label> </div> </div> <div class="has-error"> <div class="checkbox"> <label> <input type="checkbox" id="checkboxError" value="option1"> Checkbox with error </label> </div> </div> </form> 
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 validation-grids widget-shadow" data-example-id="basic-forms"> 
							<div class="form-title">
								<h4>Register Form :</h4>
							</div>
							<div class="form-body">
								<form data-toggle="validator">
									<div class="form-group">
										<input type="text" class="form-control" id="inputName" placeholder="Username" required>
									</div>
									<div class="form-group has-feedback">
										<input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
										<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
										<span class="help-block with-errors">Please enter a valid email address</span>
									</div>
									<div class="form-group">
									  <input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
									  <span class="help-block">Minimum of 6 characters</span>
									</div>
									<div class="form-group">
									  <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm password" required>
									  <div class="help-block with-errors"></div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
											  <input type="radio" name="gender" required>
											  Female
											</label>
										</div>
										<div class="radio">
											<label>
											<input type="radio" name="gender" required>
											Male
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="checkbox">
											<label>
												<input type="checkbox" id="terms" data-error="Before you wreck yourself" required>
												I have read and accept terms of use.
											</label>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary disabled">Submit</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-6 validation-grids validation-grids-right">
							<div class="widget-shadow" data-example-id="basic-forms"> 
								<div class="form-title">
									<h4>Login form :</h4>
								</div>
								<div class="form-body">
									<form data-toggle="validator">
										<div class="form-group has-feedback">
											<input type="email" class="form-control" id="inputEmail" placeholder="Enter Your Email" data-error="Bruh, that email address is invalid" required>
											<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
										</div>
										<div class="form-group">
											<input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
										</div>
										<div class="bottom">
											<div class="form-group">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="terms" data-error="Before you wreck yourself" required>
														Remember me
													</label>
													<div class="help-block with-errors"></div>
												</div>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-primary disabled">Login</button>
											</div>
											<div class="clearfix"> </div>
										</div>
									</form>
								</div>
							</div>
							<div class="inline-form widget-shadow">
								<div class="form-title">
									<h4>Recover form :</h4>
								</div>
								<div class="form-body">
									<form data-toggle="validator">
										<div class="form-group has-feedback">
											<input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
											<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
										</div>
										<div class="form-group">
											<input type="text" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Enter your phone number" required>
										</div>
										<div class="bottom">
											<div class="form-group">
												<button type="submit" class="btn btn-primary disabled">Login</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>	
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
	<!--validator js-->
	<script src="${base}/js/Server/validator.min.js"></script>
	<!--//validator js-->
</body>
</html>