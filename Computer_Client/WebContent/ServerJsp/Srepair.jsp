<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		/* if(request.getAttribute("repairList") == null){
			request.getRequestDispatcher("../repair.s?op=query").forward(request, response);
		}else  */if(request.getAttribute("directorList") == null){
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

<link href="${base}/css/Server/font-awesome.css" rel="stylesheet"> 

<script src="${base}/js/Server/jquery-1.11.1.min.js"></script>
<script src="${base}/js/Server/modernizr.custom.js"></script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->

  <link rel="stylesheet" type="text/css" href="${base}/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${base}/easyui/themes/icon.css">
<link href="${base}/css/Server/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="${base}/js/Server/wow.min.js"></script>

<script type="text/javascript" src="${base}/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${base}/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${base}/easyui/locale/easyui-lang-zh_CN.js"></script>
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
		<div id="page-wrapper" >
			
					<h3 class="title1">网络报修</h3>
					<div id="tb" style="margin-left:40px">
			        		<input type="text" name="rid"  class = "easyui-searchbox" value="${param.rid}"
				        	data-options="searcher:doSearch,prompt:'维修ID/维修人员',menu:'#mm' ,width:250 ">
				        	<div id="mm" style="width:100px">
								<div id="rid" data-options="name:'rid',selected:true">维修ID</div>
								<div data-options="name:'staff'">维修人员</div>
							</div>	
			        	</div>
                    <table id="rep" toolbar="#tb"  class="easyui-datagrid"
                    data-options="pagination:true,
                    url:'../crepair.s?op=query',
                    singleSelect: true,
                    fitColumns:true,
                    rownumbers:true"
                    
                     >
                     <thead>
			              <tr>
			                <th data-options="field:'rid',width: 260,align:'center'">维修号 </th>
			                <th data-options="field:'description',width: 250" >报修故障描述 </th>
			                <th data-options="field:'time',width: 180,align:'center'" >上报时间</th>			                
			                <th data-options="field:'address',width: 360" >地点</th>		                
			                <th data-options="field:'staff',width: 80,align:'center'">处理人员</th>
			                <th data-options="field:'status',width: 80,align:'center'" >办理状态</th>
			                <th data-options="field:'ID',width: 80,align:'center',formatter:formatOper" >操作</th>
			              </tr>
			            </thead>
                     </table> 
					
					</div>
					
			
		<!-- </div> -->
		<jsp:include page="/public/Server/footer.jsp"></jsp:include>
		<script src="${base}/js/Server/classie.js"></script>
		
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
                <td width="80%"><input type="text" value="" class="form-control" id="rid1" name="rid" maxlength="10" autocomplete="off" disabled="disabled"/></td>
              </tr>
              <tr>
                <td wdith="20%">处理人员:</td>
               <%--  <input type="text" value="${param.staff}" class="form-control" id="tel" name="tel" maxlength="13" autocomplete="off" /> --%>
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
          <button type="button" class="btn btn-primary" onclick="save()">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
		
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
	
	//浏览器窗口大小变化后，表格宽度自适应
	    $(window).resize(function(){
	 
	        fitCoulms();
	 
	    });
	 
	
	//formatter的格式化函数有3个参数，分别是： value:字段的值，也就是fidid:'id'. rowData:行数据,就是一行的JSON数据. rowIndex:行索引,当前行的Index.
	
			function formatOper(val,row,index){  
				$("#rid1").val(row.rid);
			    return '<a rel="'+row.rid+'" name="see" data-toggle="modal" data-target="#seeUser"">处理</a>';  
			} 
			//设置datagrid的大小始终自适应
			function fitCoulms(){
			    $('#rep').datagrid({
			        fitColumns:true
			    })
		 	}
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
			function doSearch(value,name){
        	 	if(name == 'rid'){
        	 		$('#rep').datagrid({
        	 			queryParams:{rid:''+value+''}
        	 		});
        	 	}else{
        	 		$('#rep').datagrid({
        	 			queryParams:{staff:''+value+''}
        	 		});
        	 	}  
         }
			function save(){
				var date = {};
				date.rid = $("#rid1").val();
				date.staff = $("#select option:selected").val();
				alert(date.rid);
				/* $.post("../repair.s?op=save",date,
						function(date){
					alert(date);
				}); */ 
			}
			$(function () {
			    $("#main table tbody tr td a").click(function () {
			        var name = $(this);
			        var id = name.attr("rel"); //对应id  
			        alert(id);
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
	<!--scrolling js-->
	<script src="${base}/js/Server/jquery.nicescroll.js"></script>
	<script src="${base}/js/Server/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="${base}/js/Server/bootstrap.js"> </script>
</body>
</html>