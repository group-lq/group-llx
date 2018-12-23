<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page autoFlush="true" buffer="1094kb"%><!-- 缓冲区 -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("newsList") == null){
			
			request.getRequestDispatcher("../cnews.s?op=query").forward(request, response);
		}
	%>
<%-- 	<c:if test="${empty newsList }">
		<jsp:forward page="/cnews.s?op=query" />
	</c:if>
 --%><!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/><meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>新闻</title>
        <meta name="keywords" content="" />
        <meta name="description" content="智能建站、零基础建站" />
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
            <div id="tutorial">
                <div class="tutorial-support">
                    <div class="wrap clean">
                        <form action="${base}/cnews.s" class="support-search fl relative" >
                        <input type="hidden" name="op" value="query">
                            
                            <input type="text" class="text block border-box" name="cmmtent" value="" placeholder="新闻标题搜索">
                            <input type="submit" class="hide" value="">
                        </form>
                        <div class="line fl middle">
                        </div>
                        <a href="#"​ class="file ico trans fl middle wow fadeInUp">
                            新闻
                        </a>
                        <a href="#"​ class="question ico trans fr middle wow fadeInUp">
                            我要提问
                        </a>
                    </div>
                </div>
                <div class="wrap">
                    <div class="tutorial-list clean">
                <c:forEach items="${newsList}" var="temp">
                        <div class='item wow fadeInUp fl'>
                            
                            <div>
                                    <a href="${base}/cnews.s?op=find&newsid=${temp.newsid}"​ 
                                    style="font-size: 20px;font-family: fantasy;font-style: inherit;">
                                       ${temp.title}
                                    </a>
                            </div>
                        
                            <div class="day" style="font-size: 14px;font-style: italic;">
                               ${temp.time}
                            </div>
                          
                            <br>
                            <div style="font-size: 20px;font-family: fantasy;">
                                ${temp.description}
                            </div>
                           
                        </div>
                </c:forEach>
                    </div>
                    </div>
                    <div id="turn_page" class="wow fadeInUp" >
                        <font class="page_item_current">
                            <span><a href="news.jsp?nowPage=1">首页</a></span>
                        </font>
                        <font class="page_item_current">
                           <span><a href="news.jsp?nowPage=beforePage">上一页</a></span>
                        </font>
                        <font class="page_item_current">
                           <span><a href="news.jsp?nowPage=afterPage">下一页</a></span>
                        </font>
                        <font class="page_item_current">
                           <span><a href="news.jsp?nowPage=totalPage">末页</a></span>
                        </font>
                    </div>
                    </div>
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
         <jsp:include page="/public/Client/botton.jsp"></jsp:include>
          <c:if test="${! empty LoginedUser}">
				 <c:if test="${empty InfromMes}">
				 <jsp:forward page="/mes.s?op=NoticeMes&JspName=${pageContext.request.RequestURI}"></jsp:forward>
				 </c:if>
              <jsp:include page="/public/Client/follow.jsp"></jsp:include>
               </c:if>
       <script src="${base}/js/Client/website.js">
        </script>
        
    </body>

</html>