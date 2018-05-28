<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree App</title>
	
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
						<li>
							<a href="${basePath}/home" class="menuToggle">新闻</a>
						</li>
						<li >
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
						<li>
							<a href="${basePath}/aboutMe" class="menuToggle">关于我</a>
						</li>
						<li class="active">
							<a href="${basePath}/tools" class="menuToggle">工具</a>
						</li>
					</ul>
					
					<span class="profile">
						<span>
							<strong>${USER_SESSION.username}</strong>
							<a href="${basePath}/changeUser">切换用户 |</a>
							<a href="${basePath}/logout">退出登录</a>	
						</span>
						<a class="img" href="${basePath}/account-setting"><img src="${USER_AVATAR}" alt="" /></a>
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
				<li>tools</li>
			</ul>
			<div class="separator"></div>
			<div class="heading-buttons">
				<h2>违禁查询<span>| Vac ban</span></h2>
			</div>
			<div class="separator bottom"></div>

			<!-- 查询开始 -->
			<div class="widget widget-4 row-fluid" align="center">
				<div class="separator"></div>
				<div class="input-append">
				  	<input class="span6" id="appendedInputButtons" type="text" placeholder="Steam ID or Profile URL" style="width: 300px; height: "/>
				  	<button class="btn" type="button" style="width: 100px" onclick="getPlayersBan()">查询</button>
				</div>
			</div>
			
			<!-- 提示信息 -->
			<div class="widget widget-4" >
				<div class="widget-body" style="padding: 10px 0;" align="center">
				<h4 class="heading" >注意事项</h4>
					<p>要查询玩家是否存在违禁行为，请在搜索框内输入玩家64 位 Steam ID或者他们的自定义 URL（由用户在其个人资料中设置）</p>
				</div>
			</div>
			<!-- 查询结果 -->
			<div id="resultDiv" style="visibility:hidden">
				<div class="row-fluid" >
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading">vac封禁</h4>
							</div>
							<div class="widget-body large" id="vacbanned">
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading">社区封禁</h4>
							</div>
							<div class="widget-body large" id="communitybanned">
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading ">账户封禁</h4>
							</div>
							<div class="widget-body large cancellations"  id="economybanned">
							</div>
						</div>
					</div>
				</div>
				
				<div class="row-fluid">
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading" >vac封禁次数</h4>
							</div>
							<div class="widget-body large" id="numberofvacbans">
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading">社区封禁次数</h4>
							</div>
							<div class="widget-body large" id="numberofcommunitybans">
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head" style="background-color: green">
								<h4 class="heading ">距上次封禁已有</h4>
							</div>
							<div class="widget-body large cancellations" id="dayssincelastban">
							</div>
						</div>
					</div>
					<div id="test"></div>
				</div>
			</div>
			
			
			<!-- 查询结束-->
			<!-- loading图 -->
			<div id="loadingDiv" style="visibility:hidden; position: relative; top: -300px; right: -400px;">
				<img alt="" src="${basePath}/statics/user-res/theme/images/loading.gif"><br />
				<p style="position: relative; right: -25px;">正在查询</p> 
			</div>


			<div class="separator bottom line"></div>

					<br />
					<a href="documentation.html" title="">Documentation</a> - Collect from <a href="#" title="Air Tree" target="_blank">Air Tree</a>	
		</div>	
	</div>
	
	<script type="text/javascript" src="http://www.wodexiangce.cn/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
	function getPlayersBan() {
		$("#loadingDiv").css("visibility","visible");
		var steamidorurl =$("input:text").val();
		$.ajax({
			url:"${basePath}/query-playerban-json?steamidorurl=" + steamidorurl,
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:null,
			dataType:"json",
			success:function(data){
				$("#loadingDiv").css("visibility","hidden");
				document.getElementById("resultDiv").style.visibility="visible";
				$("#vacbanned").html(data.VACBanned);
				$("#communitybanned").html(data.CommunityBanned);
				$("#economybanned").html(data.EconomyBan);
				$("#numberofvacbans").html(data.NumberOfVACBans+"次");
				$("#numberofcommunitybans").html(data.NumberOfGameBans+"次");
				$("#dayssincelastban").html(data.DaysSinceLastBan+"天");
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
			
		});
	}
	
	</script>
	
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
	
	<!-- DataTables -->
	<script src="${basePath}/statics/user-res/theme/scripts/DataTables/media/js/jquery.dataTables.min.js"></script>
	<script src="${basePath}/statics/user-res/theme/scripts/DataTables/media/js/DT_bootstrap.js"></script>
	
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