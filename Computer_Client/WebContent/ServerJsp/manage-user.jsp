<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	//response.setContentType("HTML/text,charset=UTF-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");
		if(request.getAttribute("userList") == null){
			request.getRequestDispatcher("user.s?op=query").forward(request, response);
		}
	%> --%>
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
        
        <form action="user.s">
        	<input type="hidden" name="op" value="query">
        	姓名<input type="text" name="name" value="${param.name}">
        	专业班级<input type="text" name="account" value="${param.majorclass}">
        	电话<input type="text" name="tel" value="${param.tel}">
        	<input type="submit" value="搜索">
        </form>
        
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th> <span class="visible-lg">ID</span></th>
                <th> <span class="visible-lg">姓名</span></th>
                <th> <span class="visible-lg">电话</span></th>
                <th> <span class="visible-lg">专业班级</span></th>
                <th> <span class="visible-lg">进会时间</span></th>
                <th> <span class="visible-lg">会员/理事</span></th>
                <th> <span class="visible-lg">操作</span></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>edit</td>
                <td>编辑</td>
                <td>4</td>
                <td>2015-12-03 15:14:27</td>
                <td>会员</td>
                <td><a rel="1" name="see">修改</a> <a rel="1" name="delete">删除</a> <a href="/User/checked/id/1/action/n">禁用</a></td>
              </tr>
              <tr>
                <td>2</td>
                <td>test</td>
                <td>测试</td>
                <td>3</td>
                <td>2015-12-03 15:14:27</td>
                 <td>会员</td>
                <td><a rel="2" name="see">修改</a> <a rel="2" name="delete">删除</a> <a href="/User/checked/id/2/action/y">启用</a></td>
              </tr>
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
    <form action="/User/update" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">修改用户</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">姓名:</td>
                <td width="80%"><input type="text" value="" class="form-control" id="truename" name="truename" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" value="" class="form-control" id="usertel" name="usertel" maxlength="13" autocomplete="off" /></td>
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
          <input type="hidden" name="userid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

<script>
$(function () {
    $("#main table tbody tr td a").click(function () {
        var name = $(this);
        var id = name.attr("rel"); //对应id   
        if (name.attr("name") === "see") {
            $.ajax({
                type: "POST",
                url: "/User/see",
                data: "id=" + id,
                cache: false, //不缓存此页面   
                success: function (data) {
                    var data = JSON.parse(data);
					$('#truename').val(data.truename);
					$('#username').val(data.username);
					$('#usertel').val(data.usertel);
					$('#userid').val(data.userid);
                    $('#seeUser').modal('show');
                }
            });
        } else if (name.attr("name") === "delete") {
            if (window.confirm("此操作不可逆，是否确认？")) {
                $.ajax({
                    type: "POST",
                    url: "/User/delete",
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
