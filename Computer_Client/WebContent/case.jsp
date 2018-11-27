<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"
        />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="css/global.css" rel="stylesheet" type="text/css" />
        <link href="css/lib.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <script src="js/jquery-1.9.1.min.js">
        </script>
        <script src="js/global.js">
        </script>
        <script src="js/cn.js">
        </script>
        <script src="js/checkform.js">
        </script>
        <script src="js/wow.js">
        </script>
        <script src="js/imagesloaded.min.js">
        </script>
        <script src="js/countup.js">
        </script>
        <script src="js/bootstrap.min.js">
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
       <jsp:include page="/public/head.jsp"></jsp:include>
        <div id="header-blank" class="show992">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="picture/44c5a1b00c.jpg" alt="" class="max-w100">
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
                   		<td width="70"><img alt="" src="picture/s.png"></td>
                   	</tr>
                   </table>  -->
                    <form action="user.s">
			        	<input type="hidden" name="op" value="query">
			        	维修号:<input type="text" name="name" value="${param.name}">
			        	<input type="submit" value="搜索">
        			</form>
        			<br/>
                    <table class="table table-striped table-hover">
			            <thead>
			              <tr>
			                <th> <span class="visible-lg">维修号</span></th>
			                <th> <span class="visible-lg">用户名</span></th>
			                <th> <span class="visible-lg">电话</span></th>
			                <th> <span class="visible-lg">地点</span></th>
			                <th> <span class="visible-lg">保修故障描述</span></th>
			                <th> <span class="visible-lg">处理人员</span></th>
			                <th><span class="visible-lg">办理状态</span></th>
			              </tr>
			            </thead>
            		<tbody>
           
		            </tbody>
		          </table>
		          <div>
		          	<table width="673" height="287" cellpadding="0" cellspacing="0">
                
                  <tr class="tr_body">
                    <td class="p_left10" colspan="5">
					
					</td>
                  </tr>
				   
                  <tr class="tr_foot">
                    <td  class="p_left10" colspan="5"><span>办事统计：</span> 累计共收件：<span>22499</span> 件；未处理：<span>101</span> 件；已处理：<span>21656</span> 件</td>
                  </tr>
                  
                </table>
                
                 <ol class="breadcrumb">
          		 	<li><a data-toggle="modal" data-target="#addUser" id="d1"><img alt="" src="picture/btn1.png"></a></li>
       			 </ol>
              
                
		          </div>
		          
		          
        </div>
                    </div>
                    <div id="turn_page" class="wow fadeInUp" first last>
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
            
            <div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" >
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="user.s" method="post" autocomplete="off" draggable="false">
    <input type="hidden" name="op" value="add">
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
                <td wdith="20%">用户名:</td>
                <td width="80%"><input type="text" value="${param.name}" class="form-control" name="name" maxlength="10" autocomplete="off" /></td>
              </tr>
             
              <tr>
                <td wdith="20%">电话:</td>
                <td width="80%"><input type="text" value="${param.account}" class="form-control" name="account" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">地点:</td>
                <td width="80%"><input type="text" value="${param.tel}" class="form-control" name="tel" maxlength="13" autocomplete="off" /></td>
              </tr>
              <tr>
               <td  width="20%" ><br>
               <span style="color:#ff5400">*</span><font class="index_text22"><br>保修<br>故障<br>描述<br>：</font></td>
              
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
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
            
            
         <jsp:include page="/public/botton.jsp"></jsp:include>
            <jsp:include page="/public/follow.jsp"></jsp:include>
        <script src="js/website.js">
        </script>
    </body>

</html>