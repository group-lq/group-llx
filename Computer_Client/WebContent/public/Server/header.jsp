<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="index.jsp"><i class="fa fa-home nav_icon"></i>仪表板</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-cogs nav_icon"></i>文章管理<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="${base}/ServerJsp/grids.jsp">添加文章</a>
								</li>
								<li>
									<a href="${base}/ServerJsp/media.jsp">修改文章</a>
								</li>
								<li>
									<a href="${base}/ServerJsp/media.jsp">删除文章</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li class="">
							<a href="#"><i class="fa fa-book nav_icon"></i>评论管理<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="general.jsp">热门评论</a>
								</li>
								<li>
									<a href="typography.jsp">关键字</a>
								</li>
							</ul>
							<!-- /nav-second-level -->
						</li>
						<li>
							<a href="${base }/ServerJsp/notice.jsp"><i class="fa fa-th-large nav_icon"></i>会议通知 <span class="nav-badge-btm">08</span></a>
						</li>
						<!-- <li>
							<a href="#"><i class="fa fa-envelope nav_icon"></i>邮件<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="inbox.jsp">写邮件</a>
								</li>
								<li>
									<a href="compose.jsp">收邮件</a>
								</li>
							</ul>
							//nav-second-level
						</li> -->
						<li>
							<a href="Srepair.jsp"><i class="fa fa-table nav_icon"></i>网络报修</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-check-square-o nav_icon"></i>管理用户<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse">
								<li>
									<a href="forms.jsp">用户管理<span class="nav-badge-btm">07</span></a>
								</li>
								<li>
									<a href="attestation.jsp">认证管理</a>
								</li>
							</ul>
							<!-- //nav-second-level -->
						</li>
						
						
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush" ><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.jsp">
						<h1>计算机协会</h1>
						<span>后台管理</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div><!--//end-search-box-->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>你有三条新消息</h3>
									</div>
								</li>
								<li><a href="#">
								   <div class="user_img"><img src="${base}/images/Server/1.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>一小时前</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="${base}/images/Server/2.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>一小时前</span></p>
									</div>
								  <div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="${base}/images/Server/3.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>一小时前</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">查看所有消息</a>
									</div> 
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>你有三条新通知</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">数据库更新</span><span class="percentage">40%</span>
										<div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:40%;"></div>
									</div>
								</a></li>
								 <li class="odd"><a href="#">
									<div class="user_img"><img src="${base}/images/Server/1.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>一小时前</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li><a href="#">
									<div class="user_img"><img src="${base}/images/Server/3.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>一小时前</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li>
									<div class="notification_bottom">
										<a href="#">查看所有通知</a>
									</div> 
								</li>
							</ul>
						</li>	
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>你有8个挂起的任务</h3>
									</div>
								</li>
								<%-- <li><a href="#">
									<div class="task-info">
										<c:if test="${! empty ServerMsg}"><span class="task-desc">维修未处理</span><span class="percentage">${ServerMsg.cnt}</span></c:if>
										<div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:${ServerMsg.cnt};"></div>
									</div>
								</a></li> --%>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">仪表板完成</span><span class="percentage">90%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar green" style="width:90%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">移动应用程序</span><span class="percentage">33%</span>
										<div class="clearfix"></div>	
									</div>
								   <div class="progress progress-striped active">
										 <div class="bar red" style="width: 33%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">问题修复</span><span class="percentage">80%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar  blue" style="width: 80%;"></div>
									</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="javascript:void(0)">查看所有待处理任务</a>
									</div> 
								</li>
							</ul>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="${base}/images/Server/a.png" alt=""> </span> 
									<div class="user-name">
										<p>Wikolia</p>
										<span>管理员</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> 设置</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> 轮廓</a> </li> 
								<li> <a href="${base}/user.s?op=LoginOut"><i class="fa fa-sign-out"></i> 登出</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>