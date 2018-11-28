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
            无人机
        </title>
        <meta name="keywords" content="无人机,深圳,智航,无人机,有限公司,总部," />
        <meta name="description" content="深圳智航无人机有限公司，总部位于深圳南山科技园，是集专业研发，生产，销售为一体的全球领先无人机企业，是国际顶尖的无人机智能飞控系统，高端影视航拍云台，高清图传的开"
        />
         <link href="${pageContext.servletContext.contextPath}/css/Client/font-awesome.min.css" rel="stylesheet" type="text/css"
        />
        <link href="${pageContext.servletContext.contextPath}/css/Client/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/css/Client/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/css/Client/global.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/css/Client/lib.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.servletContext.contextPath}/css/Client/style.css" rel="stylesheet" type="text/css" />
        <script src="${pageContext.servletContext.contextPath}/js/Client/jquery-1.9.1.min.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/global.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/cn.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/checkform.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/wow.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/imagesloaded.min.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/countup.js">
        </script>
        <script src="${pageContext.servletContext.contextPath}/js/Client/bootstrap.min.js">
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
                            <img src="${pageContext.servletContext.contextPath}/picture/710472f909.jpg" alt="" class="max-w100">
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
                        无人机
                    </div>
                    <div class="blank9">
                    </div>
                    <span>
                        发布时间：2017-10-09 16:04
                    </span>
                </div>
                <div class="blank25">
                </div>
                <div class="editor wow fadeInUp">
                    深圳智航无人机有限公司，总部位于深圳南山科技园，是集专业研发，生产，销售为一体的全球领先无人机企业，是国际顶尖的无人机智能飞控系统，高端影视航拍云台，高清图传的开发商及小型无人机应用的系统集成企业。
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <jsp:include page="/public/Client/botton.jsp"></jsp:include>
           <jsp:include page="/public/Client/follow.jsp"></jsp:include>
        <script src="${pageContext.servletContext.contextPath}/js/Client/website.js">
        </script>
    </body>

</html>