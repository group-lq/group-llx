<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    
<title> 国二成绩查询</title>
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
        	#label{
        		font-size: 16px;
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
        <div id="">
        	<label id="label">姓名：</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	<input type="text" id="label" value="${sessionScope.loginedUser.name}">
        </div>
        <div>
        	<label id="label">成绩：</label>
        	<input type="text" id="label" value="${sessionScope.loginedUser.gresult}">
        </div>
        <div>
        	<label id="label">身份证号：</label>
        	<input type="text" id="label" value="${sessionScope.loginedUser.idenno}">
        </div>
        
	<jsp:include page="/public/Client/botton.jsp"></jsp:include>
    <jsp:include page="/public/Client/follow.jsp"></jsp:include>
    <script src="${base}/js/Client/website.js">
    </script>
</body>
</html>