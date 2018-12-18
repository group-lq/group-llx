<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
		System.out.println(request.getAttribute("newsList"));
	%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
            为什么企业要建多国语言网站？
        </title>
        <meta name="keywords" content="为什么,企业,要,建,多国,语言,网站,互联网,在," />
        <meta name="description" content="互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量"
        />
        <link href="${base}/css/Client/font-awesome.min.css" rel="stylesheet" type="text/css"
        />
        
        <link href="${base}/css/Client/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/global.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/lib.css" rel="stylesheet" type="text/css" />
        <link href="${base}/css/Client/style.css" rel="stylesheet" type="text/css" />
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
                   <span style="font-size: 20px;font-family: 微软雅黑;margin-left: 4% ">评论一下</span>
					<div class="comment" style="margin-left: 5%">
						<br>
						<form id="comment-form" action="${base}/comment.s" method="POST" >
						<input type="hidden" name="op" value="">
							<input name="" id="" class="form-control" size="22"
								placeholder="您的昵称（必填）" maxlength="15" autocomplete="off"
								tabindex="1" type="text" style="width: 50%">
								<br>
							<input name="" id="" class="form-control" size="22" placeholder="您的网址或邮箱（非必填）"
								maxlength="58" autocomplete="off" tabindex="2" type="text" style="width: 50%">
							<br>
								<textarea class="form-control" placeholder="您的评论或留言（必填）" name="comment-textarea"
									id="comment-textarea" cols="100%" rows="3" tabindex="3" style="width: 50%"></textarea>
									<input type="submit" class = "comment-submit"name = "comment" value="评论" style="width: 55px;height: 30px ;background-color: white">
							
							</form>
							
							</div>
					<hr>	
						
					
					
				
				
            
            
            
            	<jsp:include page="/public/Client/botton.jsp"></jsp:include>
            	<jsp:include page="/public/Client/follow.jsp"></jsp:include>
           
            
        <script src="${base}/js/Client/website.js">
        </script>
    </body>

</html>