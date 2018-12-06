<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录记录 - 异清轩博客管理系统</title>
<link rel="stylesheet" type="text/css" href="${base}/css/Server/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${base}/css/Server/style.css">
<link rel="stylesheet" type="text/css" href="${base}/css/Server/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="${base}/images/Server/icon/icon.png">
<link rel="shortcut icon" href="${base}/images/Server/icon/favicon.ico">
<script src="${base}/js/Server/jquery-2.1.4.min.js"></script>
<style type="text/css">
	.right{
	width: 1100px;
	float:right;
	margin-right: -50px;
	} 
	</style>
</head>
<body class="user-select">
	<jsp:include page="/public/Server/head.jsp"></jsp:include>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-lg-10 col-md-offset-2 main" id="main">
		<jsp:include page="/public/Server/menu.jsp"></jsp:include>
		 <div class="right">
   		 <h1 class="page-header">操作</h1>
        <ol class="breadcrumb">
          <li><a data-toggle="modal" data-target="#addUser">增加用户</a></li>
        </ol>
        <h1 class="page-header">管理</h1>
        <form action="" class="move">
       		姓名：<input type="text" name="account" >
  	 		 身份证号：<input type="text" name="name" >
 	  	  	<input type="submit" value="查询">
        </form>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr class="span">
                <th><span>ID</span></th>
                <th><span>姓名</span></th>
                <th><span>身份证号</span></th>
                <th><span>成绩</span></th>
                <th><span>操作</span></th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
    </div>
	</div>
	<!--增加用户模态框-->
<div class="modal fade" id="addUser" >
  <div class="modal-dialog" style="max-width:450px;">
    <form action="user.s" method="post" >
    <input type="hidden" name="op" value="add">
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
            <!-- 参数回填 -->
            <tbody>
              <tr>
                <td width="20%">ID:</td>
                <td width="80%"><input type="text" value="${param.name}" class="form-control" name="name" maxlength="10" /></td>
              </tr>
             
              <tr>
                <td width="20%">性别：</td>
                <td width="80%"><input type="text" value="${param.tel}" class="form-control" name="tel" maxlength="13" /></td>
              </tr>
              <tr>
                <td width="20%">身份证号:</td>
                <td width="80%"><input type="password" class="form-control" name="pwd" maxlength="18" /></td>
              </tr>
              <tr>
                <td width="20%">成绩:</td>
                <td width="80%"><input type="password" class="form-control" name="new_password" maxlength="18" /></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" >取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>