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
        	<fieldset >
        	<legend>国二成绩查询</legend>
        	
        	<form action="../Grade.s"  method="post">
        	<input type="hidden" name="op" value="glogin">
        		<div>
        			<label id="title">考试科目：</label>
       				<select  id="text project" name="subject">
								<option value="14">14一级计算机基础及WPS Office应用</option>
								<option value="15">15一级计算机基础及MS Office应用</option>
								<option value="16">16一级计算机基础及Photoshop应用</option>
								<option value="24">24二级C语言程序设计</option>
								<option value="27">26二级VB语言程序设计</option>
								<option value="27">27二级VFP数据库程序设计</option>
								<option value="28">28二级JAVA语言程序设计</option>
								<option value="29">29二级ACCESS数据库程序设计</option>
								<option value="61">61二级C++语言程序设计</option>
								<option value="63">63二级MySQL数据程序设计</option>
								<option value="64">64二级Web程序设计</option>
								<option value="65">65二级MS Office高级应用</option>
								<option value="35">35三级网络技术</option>
								<option value="36">36三级数据库技术</option>
								<option value="value2">36三级数据库技术</option>
								<option value="value2">36三级数据库技术</option>
								<option value="37">37三级软件测试技术</option>
								<option value="41">41四级网络工程师</option>
								<option value="42">42四级数据库工程师</option>
								<option value="43">43四级软件测试工程师</option>
								<option value="44">44四级信息安全工程师</option>
								<option value="45">45四级嵌入式系统开发工程师</option>
							</select>
       			</div>
        		<div>
        			<label id="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：</label>
        			<input type="text" placeholder="请输入姓名" id="text" name="name">
        		</div>	
        		<div>
        			<label id="title">请输入证件号码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        			<input type="text" placeholder="请输入报考时的身份证件号码" id="text" style="width: 200px;height: 25px" name="idenno">
        		</div>
        		<div>
        			<label id="title">验证码：</label>
        			<input type="text" style="width: 100px;">
        		</div>
        		<div>
        			<button id="submit" onclick="sel()" >查询成绩</button>
        		</div>      
        	</form>
        
        </fieldset>
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
        </script>
    </body>
    
<c:if test="${ !empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>

</html>