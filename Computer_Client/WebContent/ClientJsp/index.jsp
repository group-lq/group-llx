<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page autoFlush="true" buffer="1094kb"%><!-- 缓冲区 -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setHeader("Content-type", "text/html;charset=UTF-8");	
		if(request.getAttribute("newsList") == null){
			request.getRequestDispatcher("../cnews.s?op=newquery").forward(request, response);
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
                        <!--<div class="item relative inline-block text-center fz0 over item-0"> <a href="#"​ class="banner-button absolute text-center trans-1s"></a> <img src="" alt="" class="max-w100">
                        <div class="font font-0 text-center absolute nowrap trans-1s"><span class="trans-1s inline-block">模版 · 一样可以很精致</span></div>
                        <img class="img-0 img trans-1s absolute" src="" alt=""/> <img class="img-1 img trans-1s absolute" src="" alt=""/> <img class="img-2 img trans-1s absolute" src="" alt=""/> </div>-->
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-1f92z915060-l.jpg" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-1f92z915190-l.jpg" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="${base}/picture/1-1f929111s30-l.jpg" alt="" class="max-w100">
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
                   计协成员
                </div>
     
                <div class="category-list text-center fz0 hide992 wow fadeInUp" style="float:left">
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                    <span> 优秀理事</span>
                       
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                    <span> 优秀会员</span>
                    
                    </a>
                 
                    <!-- <a href="#"​ class="item inline-block trans" cid="7" rel="nofollow">餐饮美食</a> 
                    <a href="#"​ class="item inline-block trans" cid="9" rel="nofollow">设计建筑</a>-->
                </div>
                <div class="category-list text-center show992 wow fadeInUp">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                            全部产品
                            <span class="caret">
                            </span>
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    企业集团
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    服饰珠宝
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    家居房产
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    婚纱摄影
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    餐饮美食
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    美容美妆
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    设计建筑
                                </a>
                            </li>
                            <!--<li><a href="#"​ cid="7" rel="nofollow">餐饮美食</a></li>
                            <li><a href="#"​ cid="9" rel="nofollow">设计建筑</a></li>-->
                        </ul>
                    </div>
                </div>
                <div class="products-bg trans">
                    <div class="wrap">
                        <div id="products-box" class="over">
                            <div class="products-list relative fz0 trans">
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="财税代理公司注册" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g009143133218.jpg" alt="财税代理公司注册" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    财税代理公司注册
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="记忆枕头床上用品" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g009143a80-l.jpg" alt="记忆枕头床上用品" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    记忆枕头床上用品
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="门业木材铝合金门窗" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g0091436390-l.jpg" alt="门业木材铝合金门窗" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    门业木材铝合金门窗
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="打印机印刷设备" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g0091436130-l.jpg" alt="打印机印刷设备" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    打印机印刷设备
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="淀粉原材料" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g0091435480-l.jpg" alt="淀粉原材料" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    淀粉原材料
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="${base}/picture/notebook.png" alt="灯箱标识设计" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${base}/picture/1-1g0091435090-l.png" alt="灯箱标识设计" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
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
                                                    灯箱标识设计
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                            </div>
                             <div class="text-center">
                    <div class="try-button-box wrap fz0">
                        <a href="#"​ target="_blank"
                        class="button inline-block text-center trans wow fadeInUp">
                           了解更多
                        </a>
                    </div>
                </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
            
            
            <div class="blank15">
            </div>
            <div class="blank15">
            </div>
            <div class="index-cooperation wrap">
                <div class="index-title text-center wow fadeInUp">
                    合作伙伴
                </div>
                <div class="index-brief text-center wow fadeInUp">
                    服务了哪些客户很重要 用心 更重要！
                </div>
                <div class="blank20">
                </div>
                <div class="cooperation-box s5 relative hide768 wow fadeInUp">
                    <div class="bd over">
                        <div class="bar trans relative fz0 nowrap">
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="周大生"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z944060-l.jpg" alt="周大生" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="环保"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z943130-l.jpg" alt="环保" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="tony"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942530-l.jpg" alt="tony" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="7度"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942410-l.jpg" alt="7度" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="平安"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942280-l.jpg" alt="平安" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="福特"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942160-l.jpg" alt="福特" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="北大"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942010-l.jpg" alt="北大" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="颜色"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941470-l.jpg" alt="颜色" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="激光"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941330-l.jpg" alt="激光" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="同学会"
                                rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941160-l.jpg" alt="同学会" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="hd text-center fz0">
                    </div>
                </div>
                <div class="cooperation-box s3 relative show768 wow fadeInUp">
                    <div class="bd over">
                        <div class="bar trans relative fz0 nowrap">
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="周大生" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z944060-l.jpg" alt="周大生" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="环保" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z943130-l.jpg" alt="环保" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="tony" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942530-l.jpg" alt="tony" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="7度" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942410-l.jpg" alt="7度" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="平安" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942280-l.jpg" alt="平安" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="福特" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942160-l.jpg" alt="福特" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="北大" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z942010-l.jpg" alt="北大" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="颜色" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941470-l.jpg" alt="颜色" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="激光" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941330-l.jpg" alt="激光" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="同学会" rel="nofollow">
                                    <img src="${base}/picture/1-1f92z941160-l.jpg" alt="同学会" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="hd text-center fz0">
                    </div>
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            
            
             <div class="index-tutorial">
                <div class="index-title text-center wow fadeInUp">
                    新闻
                </div>
                <div class="index-brief text-center wow fadeInUp">
                    智能建站、零基础建站
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
                                    <!--<a href="#"​ class="play ico trans inline-block middle">视频</a>-->
                                    <div class="line inline-block middle">
                                    </div>
                                    
                                    <a href="news.jsp"​ class="file ico trans inline-block middle">
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
                                    <a href="${base}/cnews.s?op=find&newsid=${temp.newsid}"​ class="trans">
                                       ${temp.title}
                                    </a>
                                </div>
                                <div class="brief over">
                                    ${temp.decription}
                                </div>
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
    </script>

</html>