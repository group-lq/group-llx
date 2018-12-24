<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("newsList") == null){
			request.getRequestDispatcher("../cnews.s?op=newquery").forward(request, response);
		}else if(request.getAttribute("noticePic") == null){
			request.getRequestDispatcher("../notice.s?op=findNoIndex").forward(request, response);
		}
	%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>湖南工学院计算机协会</title>
        <meta name="keywords" content="湖南工学院计算机协会" />
        <meta name="description" content="湖南工学院计算机协会" /> 
        <meta name="author" content="js代码" />
        <meta name="copyright" content="js代码" />
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
        
        <div id="header-blank">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                       <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-1.png" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-2.png" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-3.png" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
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
            
            
            <div id="products" class="index">
                <div class="index-title text-center wow fadeInUp">
                   活动
                </div>
     
                <div class="category-list text-center fz0 hide992 wow fadeInUp" style="float:left">
                    <a href="javascript:void(0)" id="meeting"  class="item inline-block trans" cid="6"
                    rel="nofollow">
                    <span >内部会议</span>
                       
                    </a>
                    <a href="javascript:void(0)" id="repair" class="item inline-block trans" cid="6"
                    rel="nofollow">
                    <span> 义务维修</span>
                    </a>
            
                </div>
             
                <div class="products-bg trans">
                    <div class="wrap">
                        <div id="products-box" class="over">
                            <div class="products-list relative fz0 trans">
                                
                                  <c:forEach items="${noticePic}" var="t">
            	<div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                    
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="内部会议" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/${t.pic}" alt="内部会议" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                  
                                                    <a href="#" class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                  ${t.inform}
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                      
                                        <a href="#"? class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
            
            </c:forEach>
                                
                            </div>
                             <div class="text-center">
                   
                </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="blank15">
            </div>
            <div class="blank15">
            </div>
             <div class="index-tutorial">
                <div class="index-title text-center wow fadeInUp">
                    新闻
                </div>
                
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="max-wrap clean relative wow fadeInUp">
                    <div class="img fl hide1300">
                        <a title="">
                            <img src="${base}/picture/3da6124a3d.jpg" alt="" class="max-w100 block">
                        </a>
                    </div>
                    <div class="tutorial-support absolute">
                        <div class="table">
                            <div class="table-cell middle">
                                <form name="formsearch" class="support-search fl relative" action="#">
                                    <input type="hidden" name="kwtype" value="0" />
                                    <input type="text" class="text block border-box" name="q" value="" placeholder="在哪里设置网站关键词">
                                    <input type="submit" class="hide" value="">
                                </form>
                                <div class="button fr text-center">
                                    <!--<a href="#"? class="play ico trans inline-block middle">视频</a>-->
                                    <div class="line inline-block middle">
                                    </div>
                                    
                                    <a href="news.jsp"? class="file ico trans inline-block middle">
                                       更多>>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tutorial-list clean wrap">
                        <c:forEach items="${newsList}" var="temp">
                        <div class='item wow fadeInUp fl'>
                            <div class="date fl">
                                <div class="day">
                                   ${temp.time}
                                </div>
                            </div>
                            <div class="info fl">
                                <div class="name text-over">
                                    <a href="${base}/cnews.s?op=find&newsid=${temp.newsid}"? class="trans">
                                       ${temp.title}
                                    </a>
                                </div>
                                <%-- <div class="brief over">
                                    ${temp.decription}
                                </div> --%>
                            </div>
                        </div>
                </c:forEach>
                       
                    </div>
                   
                        </div>
                    </div>
                
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="blank25">
                </div>
         
            <jsp:include page="/public/Client/botton.jsp"></jsp:include>
             <jsp:include page="/public/Client/follow.jsp"></jsp:include>
        <script src="${base}/js/Client/website.js">
        </script>
    </body>
    <script type="text/javascript">
    	/* $("#meeting").on("click",function(){
    		$.post("notice.s?op=findBypic",data,function(){
    			var data = JSON.prase(data);
    		}); 
    	});
    	$("#meeting").on("click",function(){
    		
    		/* $.post("notice.s?op=findBypic",data,function(){
    			
    		});
    	});
     */
    </script>

</html>