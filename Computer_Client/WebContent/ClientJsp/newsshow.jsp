<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
            新闻
        </title>
        <meta name="keywords" content="为什么,企业,要,建,多国,语言,网站,互联网,在," />
        <meta name="description" content="互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量"
        />
        <link href="${base}/css/Client/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        
        <link href="${base}/css/Client/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/global.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/lib.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="${base}/css/Client/stylee.css">
        <link rel="stylesheet" href="${base}/css/Client/comment.css">
        <style type="text/css">
        	.li{
        			font-size: 15px;
        	}

        </style>
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
    <c:if test="${empty commentList }">
    	<jsp:forward page="/cuser.s?op=findCommentByNews&newId=${news.newsid }"></jsp:forward>
    </c:if>
    <body>
      <jsp:include page="/public/Client/head.jsp"></jsp:include>
        <div id="header-blank" class="show992">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="${base}/picture/710472f909.jpg" alt="" class="max-w100">
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
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div id="info-detail" class="wrap1200 wow fadeInUp">
                <div class="top text-center">
                    <div class="info-title">
                       ${news.title}
                    </div>
                    <div class="blank9">
                    </div>
                    <span>
                        发布时间：${news.time}
                    </span>
                </div>
                <div class="blank25">
                </div>
               ${news.content}
            </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <hr>
            <span style="font-size: 20px;font-family: 微软雅黑;  margin-left: 4%">>>相关推荐</span>
            <div class="title" style=" margin-left: 5%">
					<br>
					<ul>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
						<li class="li"><a href="#" title="">用DTcms做一个独立博客网站（响应式模板）-MZ-NetBlog主题</a></li>
					</ul>
				</div>
            <hr/>
					<hr>
<span style="font-size: 20px;margin-left: 280px;">请留下你想说的话吧</span>
<div class="commentAll">
	
	<div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" id="contentText"></textarea>
        <input type="button" value="评论" class="plBtn" id="comment1">
    </div>
    <div class="comment-show" id="comment-show">
    	<c:forEach items="${commentList }" var="comment">
	        <div class="comment-show-con clearfix">
	        <div class="comment-show-con-img pull-left">
	        	<img src="<c:url value='${comment.user.pic }' />" alt="">
	        </div> 
	        <div class="comment-show-con-list pull-left clearfix">
		        <div class="pl-text clearfix"> 
			        <a href="#" class="comment-size-name">${comment.user.username } : </a>
			        <span class="my-pl-con">&nbsp; ${comment.content } </span>
		        </div> 
		        <div class="date-dz"> 
			        <span class="date-dz-left pull-left comment-time">${comment.commentTime }</span>
			        <div class="date-dz-right pull-right comment-pl-block"> </span> 
				        <a href="javascript:;" class="date-dz-z pull-left">
				      	  <i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)
				        </a> 
			        </div> 
		        </div>
		        <div class="hf-list-con">
		        </div>
	          </div>
	          </div>
          </c:forEach>
    </div>
</div>

        <jsp:include page="/public/Client/botton.jsp"></jsp:include>
        <jsp:include page="/public/Client/follow.jsp"></jsp:include>
        <script src="${base}/js/Client/website.js"></script>
        
 <script type="text/javascript">
  $("#comment1").on("click",function(){
     var content = $("#contentText").val();//时间 内容 评论人 新闻id
  
     var data={ 
    		 op : "sendComment",
    		 newsId : "${news.newsid}",
    		 content : content
    		 };
     $.post("<c:url value='/cuser.s' />",data,function(data){
    	 if(data === "notLogin"){
    		 alert("你还没有登录，请先登录");
    		 location.href = "<c:url value='/Nlogin.jsp' />";
    	 }else{
    		 history.go(0);
    	 } 
    	
     });
     
	}); 
 function parseUrl(){
     var url=location.href;
     var i=url.indexOf('?');
     if(i==-1)return;
     var querystr=url.substr(i+1);
     
     var arr1=querystr.split('&');
     var arr2=new Object();
     var ta =new Object();
     for  (i in arr1){
         ta=arr1[i].split('=');
         arr2[ta[0]]=ta[1];
     }
     return arr2[ta[0]];
 }
var v = parseUrl();//解析所有参数

 
 </script>       
        
        
       
</body>
</html>