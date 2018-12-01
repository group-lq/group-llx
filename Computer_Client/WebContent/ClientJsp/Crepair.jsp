<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("repairList") == null){
			request.getRequestDispatcher("../crepair.s?op=query").forward(request, response);
		}
	%>
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
            <div class="bgf3">
                <div id="instance" class="wrap clean">
                    <div class="instance-list clean">
                    <!--   <table>
                   	<tr>
                   		<td width="70">查询号:</td>
                   		<td><input type="text"></td>
                   		<td width="70"><img alt="" src="${base}/picture/s.png"></td>
                   	</tr>
                   </table>  -->
                    <form action="${base}/crepair.s">
			        	<input type="hidden" name="op" value="query">
			        	维修号:<input type="text" name="rid" value="${param.rid}">			        	
			        	<input type="submit" value="搜索">			        	
        			</form>
        			<br/>
                    <table class="table table-striped table-hover"  >
			            <thead>
			              <tr>
			                <th> <span class="visible-lg">维修号</span></th>
			                <th> <span class="visible-lg">报修故障描述</span></th>
			                <th> <span class="visible-lg">时间</span></th>			                
			                <th> <span class="visible-lg">地点</span></th>		                
			                <th> <span class="visible-lg">处理人员</span></th>
			                <th><span class="visible-lg">办理状态</span></th>
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
			            		</tr>
			            	</c:forEach>
			            </tbody>
            		<tbody>
           
		            </tbody>
		          </table>
		          <div>
		       
		          </div>
		          
		          
        </div>
                    </div>
                    <!-- first last -->
                    <div id="turn_page" class="wow fadeInUp" style="margin-top: 200px">
                        <span class="pageinfo">
                            共
                            <strong>
                                1
                            </strong>
                            页
                            <strong>
                                6
                            </strong>
                            条记录
                        </span>
                        
                  
                    </div>
                    
                    <!-- <hr class="tr_foot"> -->
                    <div  class="p_left10" colspan="5" style="margin: 20px 0 0 5%"><span>办事统计：</span> 累计共收件：<span>22499</span> 件；未处理：<span>101</span> 件；已处理：<span>21656</span> 件</div>
                 <!--  </hr> -->
                  <br>
                  <br>
                  
                 <ol class="breadcrumb" style="float: right;margin-right: 5%">
                 <!-- javascript:void(0) -->
                 <!-- <li><a data-toggle="modal" href="javascript:void(0)"  id="d1"></a></li> -->
          		 	<li><a data-toggle="modal" data-target="#addUser" id="d1"><img alt="" src="${base}/picture/btn1.png"></a></li>
       			 </ol>
                    
                    
                    <div class="blank20">
                    </div>
                    <div class="blank20">
                    </div>
                    <div class="blank20">
                    </div>
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
            <div class="text-center">
                <div class="try-button-box wrap fz0">
                    <a href="#" ​ target="_blank" class="button inline-block text-center trans wow fadeInUp">
                        我要私人定制
                    </a>
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
 <script src="${base}/js/Client/website.js"></script>
<script type="text/javascript">
         $(function(){
      		$("#btn").click(function(){
      			var date = {};
      			date.address = $("#address").val();
      			date.description = $("#description").val();
      			$.post("../repair.s?op=add",date,
      					function(date){
      				alert(date);
      			});
      		})
      	});
</script>            
            
         
         
         
</body>

</html>