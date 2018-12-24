<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="follow">
					<div id="openHotline" class="item relative hide992" row="2">
                    <a href="javascript:void(0)"​ class="ico orange block absolute" title="协会最新内容"
                    onclick="OptHot(1);OptQrcode(0);OptOnline(0);" rel="nofollow">
                    </a>
                    <div id="hotline">
                        <div class="top clean">
                           您有<c:if test="${! empty InfromMes}"><span class="badge blue">${InfromMes[0].cnt}</span></c:if>新消息
                            <a href="javascript:void(0)"​ class="fr fa fa-times" title="关闭小框框" onClick="OptHot(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a class="list block trans" href="${base}/mes.s?op=findNewInfrom">
                                	协会近况
                                	<c:if test="${! empty InfromMes}">
                                		<span class="badge blue">${InfromMes[1].cnt1}</span>
                                	</c:if>
                            </a>
                            <a class="list block trans">
                                	评论回复
                                	<%-- <c:if test="${! empty InfromMes}">
                                		<span class="badge blue">${InfromMes[1].cnt1}</span>
                                	</c:if> --%>
                            </a>
                            <a class="list block trans" href="${base}/mes.s?op=findNewRepair">
                                	报修回复
                                	 <c:if test="${! empty InfromMes}">
                                		<span class="badge blue">${InfromMes[0].cnt}</span>
                                	</c:if>
                            </a>
                            <a class="list block trans" href="javascript:void(0)">
                                	完善个人信息
                            </a>
                        </div>
                    	</div>
                	</div>
            </div>
            
         
