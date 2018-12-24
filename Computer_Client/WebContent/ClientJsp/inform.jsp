<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ page autoFlush="true" buffer="1094kb"%><!-- 缓冲区 -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
            通知
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
        <script>
            jQuery(window).scrollTop(0);
            jQuery('html,body').scrollTop(0);
            new WOW().init({
                mobile: false
            });

            $(function() {
                setTimeout(function() {
                    $('#body').show();
                },
                500);
            })
        </script>
        <link href="css/member.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/member.js">
        </script>
    </head>
    
    <body>
  
        <jsp:include page="/public/Client/head.jsp"></jsp:include>
        <div id="header-blank" class="show992">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="${base}/picture/2620184e5e.jpg" alt="" class="max-w100">
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank15">
            </div>
            <div id="products">
                
             
                <div id="tb" style="margin-left:40px">
			        		<input type="text" name="rid"  class = "easyui-searchbox" value="${param.rid}"
				        	data-options="searcher:doSearch,prompt:'主题/地址/时间',menu:'#mm' ,width:250 ">
				        	<div id="mm" style="width:100px">
								<div id="rid" data-options="name:'inform',selected:true">主题</div>
								<div data-options="name:'address'">地址</div>
								<div data-options="name:'time'">时间</div>
							</div>	
			        	</div>
			        	
                    <table id="rep" toolbar="#tb"  class="easyui-datagrid" style="height: 500px;width: 100%"
                    data-options="pagination:true,
                    url:'../notice.s?op=query1',
                    title:'会员通知',
                    singleSelect: true,
                    fitColumns:true,
                    rownumbers:true"
                     >
                     <thead>
			              <tr>
			                <th data-options="field:'id',width: 260,align:'center'">协会通知ID </th>
			                <th data-options="field:'time',width: 250,align:'center'" >会议时间 </th>
			                <th data-options="field:'address',width: 180,align:'center'" >会议地点</th>			                
			                <th data-options="field:'username',width: 360,align:'center'" >会议组织者</th>		                
			                <th data-options="field:'inform',width: 80,align:'center'">会议主题</th>
			                <th data-options="field:'content',width: 80,align:'center'" >会议内容</th>
			              </tr>
			            </thead>
                     </table> 
               
            </div>
           </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
          
           <jsp:include page="/public/Client/botton.jsp"></jsp:include>
           	<c:if test="${! empty LoginedUser}">
				 <c:if test="${empty InfromMes}">
				 <jsp:forward page="/mes.s?op=NoticeMes&JspName=${pageContext.request.requestURL}"></jsp:forward>
				 </c:if>
              <jsp:include page="/public/Client/follow.jsp"></jsp:include>
               </c:if>   
       <script src="${base}/js/Client/website.js">
        </script>
        <script type="text/javascript">
        function doSearch(value,name){
    	 	if(name == 'inform'){
    	 		$('#rep').datagrid({
    	 			queryParams:{inform:''+value+''}
    	 		});
    	 	}else if(name == 'address'){
    	 		$('#rep').datagrid({
    	 			queryParams:{address:''+value+''}
    	 		});
    	 	}  
    	 	else{
    	 		$('#rep').datagrid({
    	 			queryParams:{time:''+value+''}
    	 		});
    	 	}  
     }
        </script>
        
    </body>

</html>