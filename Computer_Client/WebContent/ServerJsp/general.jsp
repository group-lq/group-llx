<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
		if(request.getAttribute("comment") == null){
			request.getRequestDispatcher("../SArticleAdd.s?op=queryComment").forward(request, response);
		}
	%>
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
		<div id="page-wrapper" class="main">
			<div class="main-page general">

				
				<div class="panel-group tool-tips widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
					<h4 class="title2"> 评论管理 :</h4>
				  <div class="table-responsive">
		          <table class="table table-striped table-hover">
		            <thead>
		              <tr class="span">
		                <th><span>新闻标题</span></th>
		                <th><span>评论内容</span></th>
		                <th><span>用户名</span></th>
		                <th><span>操作</span></th>
		              </tr>
		            </thead>
		            <tbody>
			             <c:forEach items="${comment}" var="c">
				              <tr>
					              <c:set var="f" value="0"/>
					              	<c:forEach items="${news }" var="n">
					              <c:if test="${n.newsid == c.newsId && f==0 }">
					              			<td class="newsid">${n.title}</td><!-- 新闻标题 -->
					              <c:set var="f" value="1"/>
				              	  </c:if>
					              	</c:forEach>
					                <td>${c.content}</td><!-- 评论内容 -->
					                
					                <c:set var="d" value="0"/>
						                <c:forEach items="${users }" var="u">
						                <c:if test="${u.id==c.userId && d==0}" >
						                <td>${u.username}</td><!-- 用户名 -->
						                <c:set var="d" value="9"/>
						                </c:if>
						                </c:forEach>
					                <td><a rel="${c.commentId}" name="reply" >回复</a></td>
				              </tr>
              		    </c:forEach>
		            </tbody>
		          </table>
		           <div style="margin-top: 200px; margin-right: 600px;">
						<span><a href="general.jsp?nowPage=1">首页</a></span>
						<span><a href="general.jsp?nowPage=beforePage">上一页</a></span>
						<span><a href="general.jsp?nowPage=afterPage">下一页</a></span>
						<span><a href="general.jsp?nowPage=totalPage">末页</a></span>

					</div>
		        </div>
				</div>
				
				
				
			</div>
		</div>
		<!-- 回复评论 -->
		<div id="replyArea" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
			<div class="modal-dialog" role="document" style="max-width:450px;">
			<form action="../SArticleAdd.s" method="post" autocomplete="off" draggable="false">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		          <h4 class="modal-title">回复评论</h4>
		        </div>
		        <div class="modal-body">
		          <table class="table" style="margin-bottom:0px;">
		            <tbody>
		              <tr>
		                <td width="20%">回复内容:</td>
		                <td width="80%"><input type="text" value="" class="form-control" id="title" name="replyComment" maxlength="10" autocomplete="off" /></td>
		              </tr>
		              <tr>
		                <td width="80%"><input type="text" value="" class="form-control" id="author" name="replyTime" maxlength="10" autocomplete="off" /></td>
		              </tr>              
		            </tbody>
		            <tfoot>
		              <tr></tr>
		            </tfoot>
		          </table>
		        </div>
	        <div class="modal-footer">
	          <input type="hidden" id="newsid" value="">
	          <input type="button" class="btn btn-default" data-dismiss="modal" value="取消">
	          <input type="button" class="btn btn-primary" onclick="save()" value="提交">
	        </div>
	      </div>
    </form>
		</div>
		</div>
		<jsp:include page="/public/Server/footer.jsp"></jsp:include>
	<!-- Classie -->
		<script src="${base}/js/Server/classie.js"></script>
		<script>
		$(function () {
		    $("a").click(function () {
		    	 var name = $(this);
			     var commentId = name.attr("rel");
		        if (name.attr("name") === "reply") {
		            $.ajax({
		                type: "POST",
		                url: "../SArticleAdd.s?op=find",
		                data: "commentId=" + commentId,
		                cache: false, //不缓存此页面   
		                success: function (data) {
		                    var data = JSON.parse(data);
		                    $('#replyArea').modal('show');
		                }
		            });
		            
		        } 
		    });
		});
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