<%@page import="com.yc.bean.News"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.yc.dao.DBHelper"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
		if(request.getAttribute("newsList") == null){
			request.getRequestDispatcher("../SArticleAdd.s?op=query").forward(request, response);
		}
	%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改文章</title>
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
			<div class="main-page">
				<div class="media">
					<h3 class="title1">修改文章</h3>
					<div class="bs-example5 widget-shadow" data-example-id="default-media">
						<form action="/Computer_Client/SArticleAdd.s" class="move" method="get">
							<input type="hidden" name="op" value="query">
							序列号：<input type="text" name="newsid">
       						标题：<input type="text" name="title" >
  	 						 作者：<input type="text" name="author" >
 	  	  					<input type="submit" value="查询">
        				</form>
		        <div class="table-responsive">
		          <table class="table table-striped table-hover">
		            <thead>
		              <tr class="span">
		             	<th><span>序列号</span></th>
		                <th><span>标题</span></th>
		                <th><span>作者</span></th>
		                <th><span>日期</span></th>
		                <th><span>操作</span></th>
		              </tr>
		            </thead>
		             <tbody>
		            	<c:forEach items="${newsList}" var="u">
			              <tr>
			              	<td class="newsid">${u.newsid}</td>
			                <td>${u.title}</td>
			                <td>${u.author}</td>
			                <td>${u.time}</td>
			                <td><a rel="${u.newsid}" name="update">修改</a> <a rel="${u.newsid}" name="delete">删除</a></td>
			              </tr>
              		   </c:forEach>
		            </tbody>
		          </table>
		           <div style="margin-top: 200px; margin-right: 600px;">
						<span><a href="media.jsp?nowPage=1">首页</a></span>
						<span><a href="media.jsp?nowPage=beforePage">上一页</a></span>
						<span><a href="media.jsp?nowPage=afterPage">下一页</a></span>
						<span><a href="media.jsp?nowPage=totalPage">末页</a></span>
					</div>
		        </div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 修改文章 -->
		<div id="updateArticle" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
			<div class="modal-dialog" role="document" style="max-width:450px;">
			<form action="../SArticleAdd.s" method="post" autocomplete="off" draggable="false">
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		          <h4 class="modal-title">修改文章</h4>
		        </div>
		        <div class="modal-body">
		          <table class="table" style="margin-bottom:0px;">
		            <thead>
		              <tr> </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td width="20%">标题:</td>
		                <td width="80%"><input type="text" value="" class="form-control" id="title" name="title" maxlength="10" autocomplete="off" /></td>
		              </tr>
		              <tr>
		                <td width="20%">作者:</td>
		                <td width="80%"><input type="text" value="" class="form-control" id="author" name="author" maxlength="10" autocomplete="off" /></td>
		              </tr>
		              <tr>
		                <td width="20%">正文:</td>
		                <td width="80%"><textarea style="width: 330px;height: 100px" id="content" name="content"></textarea></td>
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
		<script src="${base}/js/Server/classie.js"></script>
		<script>
		/* 修改用户 */
		function save() {
			var data = {};
			data.newsid =$("#newsid").val();
			data.title = $('#title').val();
			data.author = $('#author').val();
			data.content= $('#content').val();
			data.newsid =$("#newsid").val();
			 $.post("../SArticleAdd.s?op=save",data,
					function(data){
				alert(data);
				window.parent.location.reload();
				parent.layer.closeAll();
				
			}); 
		}
		$(function () {
		    $(".main table tbody tr td a").click(function () {
		        var name = $(this);
		        var newsid = name.attr("rel"); //对应id  	  
		        if (name.attr("name") === "update") {
		            $.ajax({
		                type: "POST",
		                url: "../SArticleAdd.s?op=update",
		                data: "newsid=" + newsid,
		                cache: false, //不缓存此页面   
		                success: function (data) {
		                    var data = JSON.parse(data);
							$('#title').val(data.title);
							$('#author').val(data.author);
							$('#content').val(data.content);
							$('#newsid').val(data.newsid);
		                    $('#updateArticle').modal('show');
		                }
		            });
		        } else if (name.attr("name") === "delete") {
		            if (window.confirm("此操作不可逆，是否确认？")) {
		                $.ajax({
		                    type: "POST",
		                    url: "../SArticleAdd.s?op=delete",
		                    data: "newsid=" + newsid,
		                    cache: false, //不缓存此页面   
		                    success: function (data) {
		                        window.location.reload();
		                    }
		                });
		            };
		        };
		    });
		});
			/* var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			}; */
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