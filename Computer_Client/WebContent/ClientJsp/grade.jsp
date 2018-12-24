<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ page autoFlush="true" buffer="1094kb"%><!-- 缓冲区 -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
           国二成绩查询
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
        <style type="text/css">
        	#fieldset{
        		width: 600px;
        		height:450px;
        		margin-top: 80px;
        		margin-left: 300px
        	}
        	#title{
        		font-size: 16px;
        		font-family: fantasy;
        	}
        	#text{
				font-size: 14px;
			}
			option {
				font-size: 15px;
				font-family: serif;
			}
        	
        </style>
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
                            <img src="${base}/picture/ebae4c5f9e.jpg" alt="" class="max-w100">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="fieldset">
        	<a href="http://cjcx.neea.edu.cn/html1/folder/1508/206-1.htm?sid=300"><img alt="" src="${base}/images/Client/二级.png"></a>
        	
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
         <jsp:include page="/public/Client/botton.jsp"></jsp:include>
         <c:if test="${! empty LoginedUser}">
				 <c:if test="${empty InfromMes}">
				 <jsp:forward page="/mes.s?op=NoticeMes&JspName=${pageContext.request.requestURL}"></jsp:forward>
				 </c:if>
              <jsp:include page="/public/Client/follow.jsp"></jsp:include>
               </c:if>
        <script src="${base}/js/Client/website.js">
        </script>
        </script>
    </body>
    
<c:if test="${ !empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>

</html>