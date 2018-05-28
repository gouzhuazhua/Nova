<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree CSGO</title>
	
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
						<li class="active">
							<a href="${basePath}/data" class="menuToggle">数据</a>
							<ul class="menu hide">
								<li class="active"><a href="#"><span>CSGO</span></a></li>
								<li class="hasSubmenu">
									<a data-toggle="collapse" class="" href="#menu_forms"><span>敬请期待<i class="icon-chevron-right icon-white"></i></span></a>
									<ul class="collapse" id="menu_forms">
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
				<li>csgo stats</li>
			</ul>
			<div class="separator"></div>
			<div class="heading-buttons">
				<h2>CSGO统计数据<span>| Stats</span></h2>
			</div>
			<div class="separator bottom"></div>

			<!-- 统计数据开始 -->
			<!-- 提示没有游戏 -->
			<div class="row-fluid">
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">击杀数</h4>
							</div>
							<div id="kill" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">爆头率</h4>
							</div>
							<div id="headshot" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">K/D</h4>
							</div>
							<div id="kd" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
			</div>
			<div class="row-fluid">
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">死亡数</h4>
							</div>
							<div id="death" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">安放炸弹</h4>
							</div>
							<div id="plantboom" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">拆解炸弹</h4>
							</div>
							<div id="refuseboom" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
			</div>
			<div class="row-fluid">
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">匕首杀人数</h4>
							</div>
							<div id="knife" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">胜场</h4>
							</div>
							<div id="win" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget widget-3">
							<div class="widget-head">
								<h4 class="heading">MVP场数</h4>
							</div>
							<div id="mvp" class="widget-body large">
								${csgo.value }
							</div>
						</div>
					</div>
			</div>
			<div id="result" align="center" style="visibility:hidden; position:absolute; float:left; left:37%; top:300px; width:500px; height:200px;  margin-bottom: 0; border-style:solid; background-color:#ffffff; border-width:3px; border-color:#71c39a">
				<br>
				<h3 id="msg"></h3>
				<h5><a href="http://store.steampowered.com/app/730/CounterStrike_Global_Offensive/">去Steam浏览CSGO</a> </h5>
				<br>
				<h4><a href="${basePath}/home">回到主页</a> </h4>
			</div>
			
			<!-- 统计数据结束-->
			
			<div id="loadingDiv" style="visibility:hidden; position: relative; top: -300px; right: -400px;">
				<img alt="" src="${basePath}/statics/user-res/theme/images/loading.gif">
			</div>


			<div class="separator bottom line"></div>

					<br />
					<a href="documentation.html" title="">Documentation</a> - Collect from <a href="#" title="Air Tree" target="_blank">Air Tree</a>	
		</div>	
	</div>
	
	
	<!-- JQueryUI v1.9.2 -->
	<script src="${basePath}/statics/user-res/theme/scripts/jquery-ui-1.9.2.custom/js/jquery-ui-1.9.2.custom.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#loadingDiv").css("visibility", "visible");
		$.ajax({
			url:"${basePath}/query-csgo-stats-json",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:null,
			dataType:"json",
			success:function(data){
				$("#loadingDiv").css("visibility", "hidden");
				if(data != "no game"){
					var kill;
					var death;
					var headshot;
					$.each(data, function(i, result) {
						if(result['name'] == 'total_kills'){
							$("#kill").html(result['value']);
							kill = result['value'];
						}else if (result['name'] == 'total_kills_headshot') {
							headshot = result['value'];
						}else if (result['name'] == 'total_deaths') {
							$("#death").html(result['value']);
							death = result['value'];
						}else if (result['name'] == 'total_planted_bombs') {
							$("#plantboom").html(result['value']);
						}else if (result['name'] == 'total_defused_bombs') {
							$("#refuseboom").html(result['value']);
						}else if (result['name'] == 'total_kills_knife') {
							$("#knife").html(result['value']);
						}else if (result['name'] == 'total_wins') {
							$("#win").html(result['value']);
						}else if (result['name'] == 'total_mvps') {
							$("#mvp").html(result['value']);
						}
						//计算kd
						var kd = kill/death;
						//计算爆头率
						var headshotpercentage = headshot/kill;
						//结果保留两位小数
						$("#headshot").html(headshotpercentage.toFixed(2));
						$("#kd").html(kd.toFixed(2));
						
					})
				}else {
					$("#msg").html("您还没有玩过CSGO！去看看？");
					$("#result").css("visibility", "visible");
					$("#result").css("z-index", "100");
				}
				
				
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
			
		});	
		
		
	});
	</script>
	
	
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