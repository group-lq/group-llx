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
            协会简介
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
                            <img src="${base}/picture/2-1.png" alt="" class="max-w100">
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
            <div id="about" class="wrap">
                <div class="clean">
                    <div class="item about-brief fl border-box text-center wow fadeInUp">
                        <div class="about-title text-center">
                            <div class="title-0">
                                WHO ARE WE
                            </div>
                            <div class="title-1">
                                <span>
                                    我们是谁
                                </span>
                            </div>
                        </div>
                        <div class="brief">
                           	 湖南工学院计算机协会是一个学术科技类协会，是一个以技术为核心的协会。
                            <br />
                            	 协会分为五个团队，硬件团队，多媒体团队，Web团队，office团队，C语言团队
                            <br />
                            	 硬件团队：解决各种计算机故障，负责协会义务维修活动。
                            <br />
                           	多媒体团队：研究图片视频处理技术，负责制作宣传海报视频。
                            <br />
                            office团队：致力于用Office进行文字排版、表格技巧、幻灯片的教学。
                            <br />
                           C语言团队：进行C语言的入门教学，解决C语言的技术问题。
                            <br />
                           Web团队：学习网页制作，负责维护协会网页。
           
                        </div>
                    </div>
                </div>
                <div class="clean relative">
                    <div class="item fl fz0 text-center wow fadeInUp">
                        <img src="${base}/picture/18beffa957.jpg" alt="" class="max-w100">
                    </div>
                    <div class="item number text-center absolute wow fadeInUp">
                        <div class="i fl">
                            <div id="down-0" class="n" data-start="0" data-end="30" data-duration="1">
                                30
                            </div>
                            协会理事
                        </div>
                        <div class="i fl">
                            <div id="down-1" class="n" data-start="0" data-end="100" data-duration="2"
                            data-suffix="+">
                                100+
                            </div>
                            新入会员
                        </div>
                        <div class="i fl">
                            <div id="down-2" class="n" data-start="0" data-end="1000" data-duration="3"
                            data-suffix="+">
                                1000+
                            </div>
                            累计会员
                        </div>
                    </div>
                </div>
            </div>
            <div id="team" class="wrap">
                <div class="about-title text-center">
                    <div class="title-0 wow fadeInUp">
                        DEVELOPMENT TEAM
                    </div>
                    <div class="title-1 wow fadeInUp">
                        <span>
                            部门
                        </span>
                    </div>
                </div>
                <div class="team-list clean">
                
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
				 <jsp:forward page="/mes.s?op=NoticeMes&JspName=${pageContext.request.requestURL}"></jsp:forward>
				 </c:if>
              <jsp:include page="/public/Client/follow.jsp"></jsp:include>
               </c:if> 
        <script src="${base}/js/Client/website.js">
        </script>
        
        </script>
    </body>

</html>