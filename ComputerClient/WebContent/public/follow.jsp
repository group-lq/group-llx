<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="follow">
                <div id="openHotline" class="item relative hide992" row="2">
                    <a href="#"​ class="ico orange block absolute" title="服务热线"
                    onclick="OptHot(1);OptQrcode(0);OptOnline(0);" rel="nofollow">
                    </a>
                    <div id="hotline">
                        <div class="top clean">
                            服务热线
                            <a href="#"​ class="fr fa fa-times" title="隐藏热线" onClick="OptHot(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a class="list block trans">
                                0755-88888888
                            </a>
                            <a class="list block trans">
                                400-8888-888
                            </a>
                        </div>
                    </div>
                </div>
                <div id="openOnline" class="item relative hide992" row="2">
                    <a href="#"​ class="ico blue block absolute" title="在线咨询" onClick="OptOnline(1);OptQrcode(0);OptHot(0);"
                    rel="nofollow">
                        <span class="middle fa fa-qq fa-2x">
                        </span>
                    </a>
                    <div id="online">
                        <div class="top clean">
                            在线咨询
                            <a href="#"​ class="fr fa fa-times" title="隐藏咨询" onClick="OptOnline(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a href="#"​ class="list block trans"
                            title="咨询TA" target="_blank" rel="nofollow" d="2498989222">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                            <a href="#"​ class="list block trans"
                            title="咨询TA" target="_blank" rel="nofollow" d="88889999">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item relative show992 trans">
                    <a href="#"​ class="ico blue block trans phone" rel="nofollow">
                    </a>
                </div>
                <div class="item relative trans">
                    <a href="#"​ class="ico red block trans sina" title="关注微博"
                    target="_blank" rel="nofollow">
                        <span class="middle fa fa-weibo fa-2x">
                        </span>
                    </a>
                </div>
                <div id="openQrcode" class="item relative trans">
                    <a href="#"​ class="ico green block trans wechat" title="关注微信"
                    onclick="OptQrcode();OptOnline(0)" rel="nofollow">
                        <span class="middle fa fa-weixin fa-2x">
                        </span>
                    </a>
                    <div id="wechat-qrcode">
                        <img src="picture/erweima.png" alt="" width="200" />
                    </div>
                </div>
                <div class="item relative">
                    <a href="#"​ class="ico block trans totop show totop" title="回到顶部"
                    onclick="toTop();" rel="nofollow">
                        <span class="middle fa fa-angle-up fa-2x">
                        </span>
                    </a>
                </div>
            </div>
        </div>