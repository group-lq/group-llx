<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%-- <%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("repairList") == null){
			request.getRequestDispatcher("../crepair.s?op=query").forward(request, response);
		}
	%> --%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
            案例
        </title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="${base}/css/Client/font-awesome.min.css" rel="stylesheet" type="text/css"
        />
        <link href="${base}/css/Client/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/global.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/lib.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/style.css" rel="stylesheet" type="text/css" />
        
        <link rel="stylesheet" type="text/css" href="${base}/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${base}/easyui/themes/icon.css">
	
	
        <script src="${base}/js/Client/jquery-1.9.1.min.js">
        </script>
        <script src="${base}/js/Client/global.js">
        </script>
        <script src="${base}/js/Client/cn.js">
        </script>
        <script src="${base}/js/Client/checkform.js">
        </script>
        <script src="${base}/js/Client/wow.js">
        </script>
        <script src="${base}/js/Client/imagesloaded.min.js">
        </script>
        <script src="${base}/js/Client/countup.js">
        </script>
        <script src="${base}/js/Client/bootstrap.min.js">
        </script>
        
        
        <script type="text/javascript" src="${base}/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${base}/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${base}/easyui/locale/easyui-lang-zh_CN.js"></script>
       
    </head>
    
    <body>
       <jsp:include page="/public/Client/head.jsp"></jsp:include>
        <div id="header-blank" class="show992">
        </div>
        <div id="body" class="easyui-panel">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="${base}/picture/44c5a1b00c.jpg" alt="" class="max-w100">
                        </div>
                    </div>
                </div>
            </div>
            <div id="small-banner" class="relative show992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                    </div>
                </div>
            </div>
            <div class="bgf3">					<!-- 加个背景 -->
                <div id="instance" class="wrap clean">
                    <div class="instance-list clean">
                    
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
                    title:'阳光服务',
                    url:'../crepair.s?op=query',
                    singleSelect: true,
                    fitColumns:true,
                    rownumbers:true"
                     >
                     <thead>
			              <tr>
			                <th data-options="field:'rid',width: 260,align:'center'">维修号 </th>
			                <th data-options="field:'description',width: 250,align:'center'" >报修故障描述 </th>
			                <th data-options="field:'time',width: 180,align:'center'" >上报时间</th>			                
			                <th data-options="field:'address',width: 360,align:'center'" >地点</th>		                
			                <th data-options="field:'staff',width: 80,align:'center'">处理人员</th>
			                <th data-options="field:'status',width: 80,align:'center'" >办理状态</th>
			              </tr>
			            </thead>
                     </table> 
                    
			            
			            
		          
		          <div>
		          </div>
        </div>
                    </div>
             <div class="blank25">
            </div>
            <div class="blank25">
            </div>
                 <ol class="breadcrumb" style="float: right;margin-right: 5%">
                 <!-- javascript:void(0) -->
                 <!-- <li><a data-toggle="modal" href="javascript:void(0)"  id="d1"></a></li> -->
          		 	<li style="cursor:pointer;"><a data-toggle="modal" data-target="#addUser" id="d1"><img alt="" src="${base}/picture/btn1.png"></a></li>
       			 </ol>
       			<div class="item fl text-center relative wow fadeInUp" style="float: right;margin-right: 5%">
                        <div class="ico">
                            <img src="${base}/picture/ico-phone.png" alt="" class="middle">
                            <span class="middle-span">
                            </span>
                        </div>
                        <div class="title">
                            联系我们
                        </div>
                        <div class="info">
                            0755-88888888
                            <br/>
                            400-8888-888
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="text-center">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            
            <jsp:include page="/public/Client/botton.jsp"></jsp:include>
         <jsp:include page="/public/Client/follow.jsp"></jsp:include>
            
<div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" >
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="repair.s" method="post" autocomplete="off" draggable="false">
    <!-- <input type="hidden" name="op" value="add"> -->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          
          <h4 class="modal-title" >网络报修</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
             
              <tr>
                <td wdith="20%">地点:</td>
                <td width="80%"><input type="text" value="${param.address}" class="form-control" name="address" maxlength="13" autocomplete="off" id="address"/></td>
              </tr>
              <tr>
               <td  width="20%" ><br>
               <span style="color:#ff5400">*</span><font class="index_text22"><br>报修<br>故障<br>描述<br>：</font></td>
              
                <!-- <td wdith="20%">保修故障描述:</td> -->
                <td><textarea name="description"  id="description"   value=""     description="内容"  minlen=1   style="width:100%;height:120px;border:1px #D0D0D0 solid; font-size:14px" onpropertychange="if(this.scrollHeight<100){this.style.posHeight=120;}else{this.style.posHeight=this.scrollHeight}"    ></textarea>
</td>
              </tr>
             
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" id="btn">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
   <%-- <script src="${base}/js/Client/website.js">
        </script> --%>
 
<script type="text/javascript">

jQuery(window).scrollTop(0);
jQuery('html,body').scrollTop(0);
new WOW().init({
    mobile: false
});
         $(function(){
      		 setTimeout(function() {
                 $('#body').show();
             },
             500);
      	});
         $("#btn").click(function(){
   			var date = {};
   			date.address = $("#address").val();
   			date.description = $("#description").val();
   			//date.rows=$("#rep").datagrid('getPager').data("pagination").options.pageSize;
   			//date.page=$("#rep").datagrid('getPager').data("pagination").options.pageNumber;
   			
   			$.post("../crepair.s?op=add",date,
   					function(date){
   				alert(date);
   			});
   		});      
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
         
     </script>           
            
         
         
         
</body>

</html>