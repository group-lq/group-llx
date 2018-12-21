<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
		if(request.getAttribute("noticeList") == null){
			request.getRequestDispatcher("../notice.s?op=query").forward(request, response);
		}  else  if(request.getAttribute("directorList") == null){
			request.getRequestDispatcher("../user.s?op=query2").forward(request, response);
		}  
	%>
<!DOCTYPE HTML>
<html>
<head>
<title>通知</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="${base}/css/Server/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${base}/css/Server/style.css" rel='stylesheet' type='text/css' />
<link href="${base}/css/Server/font-awesome.css" rel="stylesheet"> 
<link href="${base}/css/Server/custom.css" rel="stylesheet">
<!-- esyui -->
<link rel="stylesheet" type="text/css" href="${base}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${base}/easyui/themes/icon.css">
<script src="${base}/js/Server/jquery-1.11.1.min.js"></script>
<!-- esyui -->
<script type="text/javascript" src="${base}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${base}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${base}/easyui/locale/easyui-lang-zh_CN.js"></script>

<script src="${base}/js/Server/modernizr.custom.js"></script>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href="${base}/css/Server/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${base}/js/Server/wow.min.js"></script>
<script src="${base}/js/Server/skycons.js"></script>
<script src="${base}/js/Server/jquery.circlechart.js"></script>
<script src="${base}/js/Server/metisMenu.min.js"></script>
<script src="${base}/js/Server/custom.js"></script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


</head> 
<body class="cbp-spmenu-push">
	<jsp:include page="/public/Server/header.jsp"></jsp:include>
	
		<div id="page-wrapper" >
					<h3 class="title1">会议通知</h3>
					        <ol class="breadcrumb">
					          <li><a data-toggle="modal" data-target="#addUser" name="add"  style="cursor:pointer;"><img alt="会议通知" src="${base}/images/Server/小喇叭.png">通知小伙伴开会议了</a></li>
					        </ol>
					<%-- <div id="tb" style="margin-left:40px">
			        		<input type="text" name="rid"  class = "easyui-searchbox" value="${param.rid}"
				        	data-options="searcher:doSearch,prompt:'会议时间/会议组织者/会议主题',menu:'#mm' ,width:250 ">
				        	<div id="mm" style="width:100px">
								<div id="rid" data-options="name:'time',selected:true">会议时间</div>
								<div data-options="name:'username'">会议组织者</div>
								<div data-options="name:'inform'">会议主题</div>
							</div>	
			        	</div> --%>
                  <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th><span class="glyphicon glyphicon-th-large"></span> <span class="visible-lg" style="width: 100px">协会通知ID</span></th>
                <th><span class="glyphicon glyphicon-time"></span> <span class="visible-lg" style="width: 80px">会议时间</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg"style="width: 100px">会议地点</span></th>
                <th><span class="glyphicon glyphicon-user"></span> <span class="visible-lg"style="width: 100px">会议组织者</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg"style="width: 100px">会议主题</span></th>
                <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg"style="width: 100px">会议内容</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg"style="width: 80px">操作</span></th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${noticeList}" var="temp">
              <tr>
                <td>${temp.id}</td>
                <td>${temp.time}</td>
                <td>${temp.address}</td>
                <td>${temp.username}</td>
                <td>${temp.inform}</td>
                <td>${temp.content}</td>
               
                <td><a rel="${temp.id}" name="see" style="cursor:pointer;">处理</a> 
                <a rel="${temp.id}" name="delete" style="cursor:pointer;" >删除</a> </td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
          <div id="turn_page" style="text-align: center;" >
                        <font >
                            <span><a href="notice.jsp?nowPage=1">首页</a></span>
                        </font>
                        <font >
                           <span><a href="notice.jsp?nowPage=beforePage">上一页</a></span>
                        </font>
                        <font >
                           <span><a href="notice.jsp?nowPage=afterPage">下一页</a></span>
                        </font>
                        <font >
                           <span><a href="notice.jsp?nowPage=totalPage">末页</a></span>
                        </font>
                    </div>
        </div>
       </div>
       <!-- 修改 -->
       <div class="modal fade" id="seeUser" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
           <h4 class="modal-title" >修改会议内容</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">主题:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="inform" id="inform" maxlength="10" autocomplete="off" /></td>
              </tr>
             <tr>
                <td wdith="20%">时间:</td>
	            <td width="80%"><input type="text" value="" class="form-control" name="time" id="time" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">地点:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="address" id="address" maxlength="10" autocomplete="off" /></td>
              </tr>
              
              
              <tr>
                <td wdith="20%">内容:</td>
	            <td width="80%"><textarea name="description"  id="description"   value=""     description="内容"  minlen=1   style="width:100%;height:120px;border:1px #D0D0D0 solid; font-size:14px" onpropertychange="if(this.scrollHeight<100){this.style.posHeight=120;}else{this.style.posHeight=this.scrollHeight}"    ></textarea></td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <input type="hidden" id="noticeid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="save()">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- 添加 -->

<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
           <h4 class="modal-title" >添加会议内容</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
              <tr>
                <td wdith="20%">主题:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="inform" id="inform1" maxlength="10" autocomplete="off" /></td>
              </tr>
             <tr>
                <td wdith="20%">时间:</td>
	            <td width="80%"><input id="addTime" class="easyui-datebox" style="width:320px" ></td>
              </tr>
              <tr>
                <td wdith="20%">地点:</td>
                <td width="80%"><input type="text" value="" class="form-control" name="address" id="address1" maxlength="10" autocomplete="off" /></td>
              </tr>
              
              <tr>
                <td wdith="20%">组织者:</td>
                <td width="80%">
	                <select id="select">
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
          <button type="button" class="btn btn-primary" onclick="add()">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

      
	<jsp:include page="/public/Server/footer.jsp"></jsp:include>
	<script src="${base}/js/Server/jquery.nicescroll.js"></script>
	<script src="${base}/js/Server/scripts.js"></script>
   <script src="${base}/js/Server/bootstrap.js"> </script>
   <script src="${base}/js/Server/classie.js"></script>
   
	<script type="text/javascript" src="${base}/js/Server/wangEditor.js"></script> 
	<script type="text/javascript">
	 new WOW().init();
	 function add(){
		 var data={};
		 data.time = $('#addTime').datebox('getValue');
		 data.inform = $('#inform1').val();
		 data.address = $('#address1').val();
		 data.username = $('select').val();
		 alert(data.time);
		 $.post("../notice.s?op=add",data,
				 function(data){
			 alert(date);
		 }); 
	 }
	 function save(){
			var date = {};
			date.id = $("#noticeid").val();
			date.address = $("#address").val();
			date.inform = $("#inform").val();
			date.address = $("#address").val();
			
			$.post("../notice.s?op=save",date,
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
		                url: "../notice.s?op=find",
		                data: "id=" + id,
		                cache: false, //不缓存此页面   
		                success: function (data) {
		                    var data = JSON.parse(data);
							$('#inform').val(data.inform);
							$('#time').val(data.time);
							$('#address').val(data.address);
							$('#noticeid').val(data.id);
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
		
		 $(window).resize(function(){
		        fitCoulms();
		    });
	    function fitCoulms(){
		    $('#rep').datagrid({
		        fitColumns:true
		    })
	 	}
		
		function doSearch(value,name){
    	 	if(name == 'time'){
    	 		$('#rep').datagrid({
    	 			queryParams:{time:''+value+''}
    	 		});
    	 	}else if(name == 'username'){
    	 		$('#rep').datagrid({
    	 			queryParams:{username:''+value+''}
    	 		});
    	 	}else{
    	 		$('#rep').datagrid({
    	 			queryParams:{inform:''+value+''}
    	 		});
    	 	}  
     }
		
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