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
            联系
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
                            <img src="${base}/picture/efcc36677d.jpg" alt="" class="max-w100">
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
            <div id="contact" class="wrap">
                <div class="contact-info clean">
                    <div class="item fl text-center relative wow fadeInUp">
                        <div class="ico">
                            <img src="${base}/picture/ico-phone.png" alt="" class="middle">
                            <span class="middle-span">
                            </span>
                        </div>
                        <div class="title">
                            电话
                        </div>
                        <div class="info">
                            0755-88888888
                            <br/>
                            400-8888-888
                        </div>
                    </div>
                    <div class="item fl text-center relative wow fadeInUp">
                        <div class="ico">
                            <img src="${base}/picture/ico-email.png" alt="" class="middle">
                            <span class="middle-span">
                            </span>
                        </div>
                        <div class="title">
                            邮箱
                        </div>
                        <div class="info">
                            admin@163.com
                            <br/>
                        </div>
                    </div>
                </div>
                <div class="clean">
                    <div class="contact-area fr clean">
                        <div class="contact-info2 clean">
                            <div class="title wow fadeInUp">
                        计算机协会
                            </div>
                            <div class="address wow fadeInUp">
                                地点：湖南工学院信息楼
                            </div>
                            <div class="clean relative">
                                <div class="qrcode fl clean relative wow fadeInUp">
                                    <div class="img fl fz0">
                                        <img src="" alt="" class="max-w100">
                                    </div>
                                    <div class="name fl nowrap">
                                        官方微信
                                        <br/>
                                        公众号搜索“湖工计协”
                                    </div>
                                </div>
                                <div class="line absolute hide1300">
                                </div>
                                <div class="qrcode fr clean relative wow fadeInUp">
                                    <div class="img fl fz0">
                                        <img src="" alt="" class="max-w100">
                                    </div>
                                    <div class="name fl nowrap">
                                        官方QQ
                                        <br/>
                3245567278
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form class="contact-form fr fz0" action="#" enctype="multipart/form-data"
                        method="post">
                            <input type="hidden" name="action" value="post" />
                            <input type="hidden" name="diyid" value="1" />
                            <input type="hidden" name="do" value="2" />
                            <input type="text" style="margin-left:0;" class="text inline-block wow fadeInUp"
                            name="name" maxlength="20" placeholder="姓名" check="请输入姓名！~*">
                            <input type="text" class="text inline-block wow fadeInUp" name="tel" maxlength="20"
                            placeholder="电话" check="请输入电话！~*">
                            <input type="text" class="text inline-block wow fadeInUp" name="email"
                            maxlength="20" placeholder="邮箱" check="~email|“{value}”不是一个正确的邮箱格式！">
                            <textarea name="content" class="area block wow fadeInUp" placeholder="留言"
                            check="请输入留言！~*" autocomplete="off">
                            </textarea>
                            <input type="hidden" name="dede_fields" value="name,text;tel,text;email,text;content,text"
                            />
                            <input type="hidden" name="dede_fieldshash" value="6eef2ab94532badd3ceda1f6fd888674"
                            />
                            <div class="rows clean">
                                <!--<div class="code-img fl wow fadeInUp"><a href='javascript:void(0);' onclick='this.blur(); obj=document.getElementById("2f8a6bf31f3bd67bd2d9720c58b19c9a"); obj.src=obj.src+Math.random(); return true;'><img src='${base}/picture/verification_code.php' align='absmiddle' id='2f8a6bf31f3bd67bd2d9720c58b19c9a'></a></div>-->
                                <input type="submit" name="submit" class="button wow fadeInUp fr" value="提交">
                            </div>
                        </form>
                    </div>
                </div>
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="text-center">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
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