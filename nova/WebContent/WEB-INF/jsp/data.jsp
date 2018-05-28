<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree data</title>
	
	<!-- Meta -->
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	
	<!-- myselfCSS -->
	<link href="${basePath}/statics/user-res/theme/css/myself.css" rel="stylesheet" />
	
	<!-- Bootstrap -->
	<link href="${basePath}/statics/user-res/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	
	<!-- Bootstrap Extended -->
	<link href="${basePath}/statics/user-res/bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet" />
	<link href="${basePath}/statics/user-res/bootstrap/extend/jasny-bootstrap/css/jasny-bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="${basePath}/statics/user-res/bootstrap/extend/bootstrap-wysihtml5/css/bootstrap-wysihtml5-0.0.2.css" rel="stylesheet" />
	
	<!-- JQueryUI v1.9.2 -->
	<link rel="stylesheet" href="${basePath}/statics/user-res/theme/scripts/jquery-ui-1.9.2.custom/css/smoothness/jquery-ui-1.9.2.custom.min.css" />
	
	<!-- Glyphicons -->
	<link rel="stylesheet" href="${basePath}/statics/user-res/theme/css/glyphicons.css" />
	
	<!-- Bootstrap Extended -->
	<link rel="stylesheet" href="${basePath}/statics/user-res/bootstrap/extend/bootstrap-select/bootstrap-select.css" />
	<link rel="stylesheet" href="${basePath}/statics/user-res/bootstrap/extend/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
	
	<!-- Uniform -->
	<link rel="stylesheet" media="screen" href="${basePath}/statics/user-res/theme/scripts/pixelmatrix-uniform/css/uniform.default.css" />

	<!-- JQuery v1.8.2 -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery-1.8.2.min.js"></script>
	
	<!-- Modernizr -->
	<script src="${basePath}/statics/user-res/theme/scripts/modernizr.custom.76094.js"></script>
	
	<!-- MiniColors -->
	<link rel="stylesheet" media="screen" href="${basePath}/statics/user-res/theme/scripts/jquery-miniColors/jquery.miniColors.css" />
	
	<!-- Theme -->
	<link rel="stylesheet" href="${basePath}/statics/user-res/theme/css/style.min.css?1361377811" />
	
	
	
	<!-- LESS 2 CSS -->
	<script src="${basePath}/statics/user-res/theme/scripts/less-1.3.3.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="navbar main">
		<span class="logo">
			<a class="img" href="${basePath}/index.htm"><img src="${basePath}/statics/user-res/theme/images/logo.png" alt="" /></a>
		</span>
		<div class="container">
			<div class="row">
				<div class="span12 relativeWrap">
				
					<button type="button" class="btn btn-navbar visible-phone">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
		
					<ul id="menu" class="hidden-phone">
						<li >
							<a href="${basePath}/home" class="menuToggle">新闻</a>
						</li>
						<li class="active">
							<a href="${basePath}/data" class="menuToggle">数据</a>
							<ul class="menu hide">
								<li class="active"><a href="${basePath}/csgostats"><span>CSGO</span></a></li>
								<li class="hasSubmenu">
									<a data-toggle="collapse" class="" href="#menu_forms0"><span>敬请期待<i class="icon-chevron-right icon-white"></i></span></a>
									<ul class="collapse" id="menu_forms0">
										<li class=""><a href="#"><span>Dota 2</span></a></li>
										<li class=""><a href="#"><span>PUBG</span></a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<a href="${basePath}/item" class="menuToggle">饰品</a>
							<ul class="menu hide">
								<li class="active"><a href="${basePath}/csgoitem"><span>CSGO饰品</span></a></li>
								<li class=""><a href="${basePath}/dota2item"><span>Dota2饰品</span></a></li>
								<li class=""><a href="${basePath}/pubgitem"><span>绝地求生饰品</span></a></li>
								<li class="hasSubmenu">
									<a data-toggle="collapse" class="" href="#menu_forms1"><span>敬请期待<i class="icon-chevron-right icon-white"></i></span></a>
									<ul class="collapse" id="menu_forms1">
										<li class=""><a href="#"><span>Stem卡牌</span></a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li >
							<a href="${basePath}/aboutMe" class="menuToggle">关于我</a>
						</li>
						<li >
							<a href="${basePath}/tools" class="menuToggle">工具</a>
						</li>
					</ul>
					
					<span class="profile">
						<span>
							<strong>${USER_SESSION.username}</strong>
							<a href="${basePath}/changeUser">切换用户 |</a>
							<a href="${basePath}/logout">退出登录</a>	
						</span>
						<a class="img" href="${basePath}/account-setting"><img src="${USER_AVATAR}" alt="Mr. Awesome" /></a>
					</span>
					
				</div>
			</div>
		</div>
	</div>
	<!-- Start Content -->
	<div class="container-fluid fixed">	
		<div id="content">
			<ul class="breadcrumb">
				<li><a href="${basePath}/home" class="glyphicons home"><i></i> AIR -Tree</a></li> 
				<li class="divider"></li>
				<li>data</li>
			</ul>
			<div class="separator"></div>
			
			<div class="heading-buttons">
				<h2>游戏统计<span>| Steam games stats</span></h2>
				<div class="buttons pull-right">
					<a href="" class="btn btn-default btn-icon glyphicons edit"><i></i> Edit</a>
					<a href="#" class="btn-action border-only circle glyphicons cardio btn-primary"><i></i></a>
				</div>
				<div class="clearfix" style="clear: both;"></div>
			</div>
			<div class="separator bottom"></div>

			<!-- 数据开始 -->
			<!-- 热门游戏及人数 -->
			<div class="widget widget-4">
				<div class="widget widget-4 widget-body-white">
					<div class="widget-head"><h4 class="heading">依据当前玩家人数排列的最热门游戏</h4></div>
					<div class="widget-body" style="padding: 10px 0 0;">
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="right">当前玩家人数</th>
									<th>游戏</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${playerCountList}" var="playerCount" varStatus="currentStatus">
								<tr>
									<td class="right">${playerCount.player_count}</td>
									<td><p><a href="${playerCount.url}">${playerCount.appname}</a></p> </td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="separator line"></div>
			</div>
			
			<!-- 硬件与软件 -->
			<div class="widget widget-4">
				<div class="widget widget-4 widget-body-white">
					<div class="widget-head"><h4 class="heading">玩家硬件与软件统计：${ware.year }年${ware.month }月</h4></div>
					<div class="widget-body" style="padding: 10px 0 0;">
						<table class="table table-condensed">
							<thead>
								<tr>
									<th class="left">item</th>
									<th>MOST POPULAR</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="left">Windows 操作系统</td>
									<td><p>${ware.WindowsVersion}</p> </td>
								</tr>
								<tr>
									<td class="left">系统内存</td>
									<td><p>${ware.SystemRAM}</p> </td>
								</tr>
								<tr>
									<td class="left">处理器厂商</td>
									<td><p>${ware.ProcessorVendor}</p> </td>
								</tr>
								<tr>
									<td class="left">Intel CPU 速度</td>
									<td><p>${ware.IntelCPUSpeeds}</p> </td>
								</tr>
								<tr>
									<td class="left">AMD CPU 速度</td>
									<td><p>${ware.AMDCPUSpeeds}</p> </td>
								</tr>
								<tr>
									<td class="left">CPU 核心</td>
									<td><p>${ware.PhysicalCPUs}</p> </td>
								</tr>
								<tr>
									<td class="left">显示适配器</td>
									<td><p>${ware.VideoCardDescription}</p> </td>
								</tr>
								<tr>
									<td class="left">显示适配器内存</td>
									<td><p>${ware.VRAM}</p> </td>
								</tr>
								<tr>
									<td class="left">显示分辨率</td>
									<td><p>${ware.PrimaryDisplayResolution}</p> </td>
								</tr>
								<tr>
									<td class="left">语言</td>
									<td><p>${ware.Language}</p> </td>
								</tr>
								<tr>
									<td class="left">硬盘容量</td>
									<td><p>${ware.TotalHardDriveSpace}</p> </td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 数据结束-->



			<div class="separator bottom line"></div>

					<br />
					<a href="documentation.html" title="">Documentation</a> - Collect from <a href="#" title="Air Tree" target="_blank">Air Tree</a>	
		</div>	
	</div>
	
	<!-- JQueryUI v1.9.2 -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	
	<!-- JQueryUI Touch Punch -->
	<!-- small hack that enables the use of touch events on sites using the jQuery UI user interface library -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- MiniColors -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery-miniColors/jquery.miniColors.js"></script>
	
	<!-- Themer -->
	<script>
	var themerPrimaryColor = '#71c39a';
	</script>
	<script src="${basePath}/statics/user-res/theme/scripts/jquery.cookie.js"></script>
	<script src="${basePath}/statics/user-res/theme/scripts/themer.js"></script>
	
	
	
	<!-- Resize Script -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery.ba-resize.js"></script>
	
	<!-- Uniform -->
	<script src="${basePath}/statics/user-res/theme/scripts/pixelmatrix-uniform/jquery.uniform.min.js"></script>
	
	<!-- Bootstrap Script -->
	<script src="${basePath}/statics/user-res/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Extended -->
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootstrap-select/bootstrap-select.js"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/jasny-bootstrap/js/jasny-bootstrap.min.js" type="text/javascript"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/jasny-bootstrap/js/bootstrap-fileupload.js" type="text/javascript"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootbox.js" type="text/javascript"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootstrap-wysihtml5/js/wysihtml5-0.3.0_rc2.min.js" type="text/javascript"></script>
	<script src="${basePath}/statics/user-res/bootstrap/extend/bootstrap-wysihtml5/js/bootstrap-wysihtml5-0.0.2.js" type="text/javascript"></script>
	
	<!-- Custom Onload Script -->
	<script src="${basePath}/statics/user-res/theme/scripts/load.js"></script>
</body>
</html>