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
    <!--评论区域 begin-->
    <div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
        <a href="javascript:;" class="plBtn">评论</a>
    </div>
    <!--评论区域 end-->
    <!--回复区域 begin-->
    <div class="comment-show">
        <div class="comment-show-con clearfix">
           <%--  <div class="comment-show-con-img pull-left"><img src="${base}/images/Client/header-img-comment_03.png" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">张三 : </a>
                    <span class="my-pl-con">&nbsp;来啊 造作啊!</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="removeBlock">删除</a>
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                        <span class="pull-left date-dz-line">|</span>
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div> --%>
        </div>
    </div>
    <!--回复区域 end-->
</div>
        <jsp:include page="/public/Client/botton.jsp"></jsp:include>
        <jsp:include page="/public/Client/follow.jsp"></jsp:include>
        <script src="${base}/js/Client/website.js"></script>
     <script type="text/javascript" src="${base}/js/Client/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="${base}/js/Client/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        console.log(oSize);
        //动态创建评论模块
        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="${base}/images/Client/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
        }
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click','.pl-hf',function(){
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click','.hf-pl',function(){
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        console.log(oHfVal)
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@'+oHfName;
        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

        }else {
            $.getJSON("json/pl.json",function(data){
                var oAt = '';
                var oHf = '';
                $.each(data,function(n,v){
                    delete v.hfContent;
                    delete v.atName;
                    var arr;
                    var ohfNameArr;
                    if(oHfVal.indexOf("@") == -1){
                        data['atName'] = '';
                        data['hfContent'] = oHfVal;
                    }else {
                        arr = oHfVal.split(':');
                        ohfNameArr = arr[0].split('@');
                        data['hfContent'] = arr[1];
                        data['atName'] = ohfNameArr[1];
                    }

                    if(data.atName == ''){
                        oAt = data.hfContent;
                    }else {
                        oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                    }
                    oHf = data.hfName;
                });

                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
            });
        }
    });
</script>
<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click','.removeBlock',function(){
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if(oT.siblings('.all-pl-con').length >= 1){
            oT.remove();
        }else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

    })
</script>
<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>
</html>