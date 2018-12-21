<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
		if(request.getAttribute("repairList") == null){
			request.getRequestDispatcher("../crepair.s?op=query").forward(request, response);
		}  else  if(request.getAttribute("directorList") == null){
			request.getRequestDispatcher("../user.s?op=query1").forward(request, response);
		}  
	%>
<!DOCTYPE HTML>
<html>
<head>
<title>网络报修</title>
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
<link href="${base}/css/Server/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${base}/js/Server/wow.min.js"></script>
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
				<div class="tables">
					<h3 class="title1">网络报修</h3>
				
					<div class="bs-example widget-shadow" data-example-id="bordered-table"> 
						<h4>管理:</h4>
						<div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th><span class="glyphicon glyphicon-th-large"></span> <span class="visible-lg" style="width: 100px">维修号</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg" style="width: 80px">用户名</span></th>
                <th><span class="glyphicon glyphicon-pushpin"></span> <span class="visible-lg"style="width: 100px">电话</span></th>
                <th><span class="glyphicon glyphicon-time"></span> <span class="visible-lg"style="width: 100px">上报时间</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg"style="width: 100px">报修故障描述</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg"style="width: 100px">地址</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg"style="width: 80px">处理人员</span></th>
                 <th><span class="glyphicon glyphicon-time"></span> <span class="visible-lg"style="width: 80px">状态</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg"style="width: 80px">操作</span></th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${repairList}" var="temp">
              <tr>
                <td>${temp.rid}</td>
                <td>${temp.username}</td>
                <td>${temp.tel}</td>
                <td>${temp.time}</td>
                <td>${temp.description}</td>
                <td>${temp.address}</td>
                <td>${temp.staff}</td>
                <td>${temp.status}</td>
                <td><a rel="${temp.rid}" name="see" style="cursor:pointer;">处理</a> 
                <a rel="${temp.rid}" name="delete" style="cursor:pointer;" >删除</a> </td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
        </div>
				<div id="turn_page" style="text-align: center;" >
                        <font >
                            <span><a href="Srepair.jsp?nowPage=1">首页</a></span>
                        </font>
                        <font >
                           <span><a href="Srepair.jsp?nowPage=beforePage">上一页</a></span>
                        </font>
                        <font >
                           <span><a href="Srepair.jsp?nowPage=afterPage">下一页</a></span>
                        </font>
                        <font >
                           <span><a href="Srepair.jsp?nowPage=totalPage">末页</a></span>
                        </font>
                    </div>			
						
					
					</div>
					
				</div>
			</div>
		</div>
		<jsp:include page="/public/Server/footer.jsp"></jsp:include>
		
<div class="modal fade" id="seeUser" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">处理人员</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">维修号:</td>
                <td width="80%"><input type="text" value="" class="form-control" id="rid" name="rid" maxlength="10" autocomplete="off" disabled="disabled"/></td>
              </tr>
              <tr>
                <td wdith="20%">处理人员:</td>
               <%--  <input type="text" value="${param.staff}" class="form-control" id="tel" name="tel" maxlength="13" autocomplete="off" /> --%>
                <td width="80%">
	                <select>
	                	<option selected="selected">请选择</option>
	                	<c:forEach items="${directorList}" var="temp">
	                		<option value="${temp.username}">${temp.username}</option>
	                	</c:forEach>
	                </select></td>
              </tr>
               
              
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <input type="hidden" id="userid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="save()">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>


	
	
<script src="${base}/js/Server/classie.js"></script>
	<script src="${base}/js/Server/jquery.nicescroll.js"></script>
	<script src="${base}/js/Server/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="${base}/js/Server/bootstrap.js"> </script>
	<script type="text/javascript">
	new WOW().init();
	</script>
	<script type="text/javascript">
	function save(){
		var date = {};
		date.rid = $("#rid").val();
		date.staff = $("select").val();
		
		$.post("../repair.s?op=save",date,
				function(date){
			alert(date);
		});
	} 
	
	$(function () {
	    $("a").click(function () {
	        var name = $(this);
	        var id = name.attr("rel"); //对应id
	        if (name.attr("name") === "see") {
	            $.ajax({
	                type: "POST",
	                url: "../repair.s?op=find",
	                data: "id=" + id,
	                cache: false, //不缓存此页面   
	                success: function (data) {
	                    var data = JSON.parse(data);
						$('#rid').val(data.rid);
						$("select").val(data.staff);
	                    $('#seeUser').modal('show');
	                }
	            });
	        } else if (name.attr("name") === "delete") {
	            if (window.confirm("此操作不可逆，是否确认？")) {
	                $.ajax({
	                    type: "POST",
	                    url: "../repair.s?op=delete",
	                    data: "id=" + id,
	                    cache: false, //不缓存此页面   
	                    success: function (data) {
	                        window.location.reload();
	                    }
	                });
	            };
	        };
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
	
</body>
</html>