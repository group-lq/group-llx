<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("repairList") == null){
			request.getRequestDispatcher("../repair.s?op=query").forward(request, response);
		}else if(request.getAttribute("directorList") == null){
			request.getRequestDispatcher("../user.s?op=query1").forward(request, response);
		}
	%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>管理用户 - 异清轩博客管理系统</title>
<link rel="stylesheet" type="text/css" href="${base}/css/Server/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${base}/css/Server/style.css">
<link rel="stylesheet" type="text/css" href="${base}/css/Server/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="${base}/images/Server/icon/icon.png">
<link rel="shortcut icon" href="${base}/images/Server/icon/favicon.ico">
<script src="${base}/js/Server/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>

<body class="user-select">
<section class="container-fluid">
  
  <jsp:include page="/public/Server/head.jsp"></jsp:include>
  
  <div class="row">
  
    <jsp:include page="/public/Server/menu.jsp"></jsp:include>
    
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
    <h1 class="page-header">操作</h1>
        <ol class="breadcrumb">
          <li><a data-toggle="modal" data-target="#addUser">增加用户</a></li>
        </ol>
        <h1 class="page-header">管理 <span class="badge">2</span></h1>
        
        <form action="${base}/repair.s">
        	<input type="hidden" name="op" value="query">
        	维修号:<input type="text" name="rid" value="${param.rid}">
        	处理人员:<input type="text" name="staff" value="${param.staff}">
        	<input type="submit" value="搜索">
        </form>
        
        <div class="table-responsive">
          <table class="table table-striped table-hover"  >
			            <thead>
			              <tr>
			                <th> <span class="visible-lg">维修号</span></th>
			                <th> <span class="visible-lg">报修故障描述</span></th>
			                <th> <span class="visible-lg">时间</span></th>			                
			                <th> <span class="visible-lg">地点</span></th>		                
			                <th> <span class="visible-lg">处理人员</span></th>
			                <th><span class="visible-lg">办理状态</span></th>
			                <th><span class="visible-lg">操作</span></th>
			              </tr>
			            </thead>
			            <tbody>
			            	<c:forEach items="${repairList}" var="temp">
			            		<tr>
			            			<td>${temp.rid}</td>
			            			<td>${temp.description}</td>
			            			<td>${temp.time}</td>
			            			<td>${temp.address}</td>
			            			<td>${temp.staff}</td>
			            			<td>${temp.status}</td>
			            			<td>
			            				<a rel="${temp.rid}" name="see" data-toggle="modal" data-target="#seeUser">处理</a>				            			
				            			<a rel="${temp.rid}" name="delete">删除</a>
			            			</td>
			            		</tr>
			            	</c:forEach>
			            </tbody>
            		<tbody>
           
		            </tbody>
		          </table>
        </div>
    </div>
  </div>
</section>

<!--增加用户模态框-->
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="/User/add" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >增加用户</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">姓名:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="username" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="tel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">专业班级:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="majorclass" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">密码:</td>
                <td width="80%"><input type="password" class="form-control" name="pwd" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">确认密码:</td>
                <td width="80%"><input type="password" class="form-control" name="repwd" maxlength="18" autocomplete="off" /></td>
              </tr>
              <tr>
	              <td><input type="radio" checked="checked" name="0">会员</td>
	              <td><input type="radio" name="0">理事</td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!--用户信息模态框-->
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
	                	<option>请选择</option>
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

<script>
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
    $("#main table tbody tr td a").click(function () {
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

</script>
</body>
</html>
