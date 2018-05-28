<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree admin-news</title>
	
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
						<li class="active">
							<a href="${basePath}/admin-appNews" class="menuToggle">更新新闻</a>
						</li>
						<li>
							<a href="${basePath}/admin-appList" class="menuToggle">更新APP库</a>
						</li>
						<li>
							<a href="${basePath}/admin-item-update" class="menuToggle">饰品资料</a>
							<ul class="menu hide">
								<li class="active"><a href="${basePath}/admin-item-upload"><span>上传饰品</span></a></li>
								<li ><a href="${basePath}/admin-item-update"><span>修改饰品</span></a></li>
							</ul>
						</li>
						<li>
							<a href="${basePath}/admin-player" class="menuToggle">用户资料</a>
						</li>
					</ul>
					
					<span class="profile">
						<span>
							<strong>${USER_SESSION.username}</strong>
							<a href="${basePath}/changeUser">切换用户 |</a>
							<a href="${basePath}/logout">退出登录</a>	
						</span>
						<a class="img" href="#"><img src="${USER_AVATAR}" alt="Mr. Awesome" /></a>
					</span>
					
				</div>
			</div>
		</div>
	</div>

	<!-- content -->
	<div class="container-fluid fixed">
		<div id="content">
			<ul class="breadcrumb">
				<li><a href="index.html" class="glyphicons home"><i></i> Admin</a></li>
				<li class="divider"></li>
				<li>update app news</li>
			</ul>
			<div class="separator"></div>
			<div class="row-fluid">
				<div class="span4">
					<div class="widget widget-4">
						<div class="widget-head"><h4 class="heading">输入3个待更新新闻App ID:</h4></div>
						<div class="widget-body" style="padding: 10px 0;">
							<p>可通过右侧工具查询App ID（需要提供App Name即应用名称）</p>
						</div>
						<div class="separator"></div>
						#1
						<div class="row-fluid">
							<input type="text" placeholder="App ID input" class="span12" style="width: 300px" id="appid0"/>
						</div>
						<div class="separator"></div>
						#2
						<div class="row-fluid">
							<input type="text" placeholder="App ID input" class="span12" style="width: 300px" id="appid1"/>
						</div>
						<div class="separator"></div>
						#3
						<div class="row-fluid">
							<input type="text" placeholder="App ID input" class="span12" style="width: 300px" id="appid2"/>
						</div>
						<div class="separator"></div>
						<div class="row-fluid">
							<button onclick="getAppNewsByApi()" class="btn btn-block btn-primary btn-icon glyphicons electricity" style="width: 300px; background-color: #71c39a"><i></i>获取新闻</button>
						</div>
						
					</div>
				</div>
				
				<div class="span8" style="float: right" >
				</div>
				
				<!-- 查询appid工具 -->
				<div class="span8">
					<div class="widget widget-4"  align="center">
						<div class="widget-head" style="float: right; position:relative;top:-20px; right: 300px"><h4 class="heading">App ID查询工具:</h4></div>
						<div class="widget-body" style="padding: 10px 0; ">
							<p>请提供应用名称</p>
						</div>
						<div class="widget widget-4 row-fluid">
							<div class="separator"></div>
							<div class="input-append">
							  	<input class="span6"  type="text" placeholder="App Name" style="width: 300px; height: " id="appname"/>
							  	<button class="btn" type="button" style="width: 100px" onclick="getAppNameByAppId()">查询</button>
							</div>
							<div class="widget-body" style="padding: 10px 0; ">
							<p>操作日志：</p>
							</div>
							<div class="input-append">
							  	<textarea id="resultdiv" rows="9" cols="" style="width: 450px"></textarea>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<hr/>
			
			<div class="widget widget-4">
				<div class="widget-head" ><h4 class="heading">插入新闻:</h4></div>
				<div class="widget-body" style="padding: 10px 0; " align="center">
					<p>点击此按钮将会修改首页新闻。</p>
				</div>
				<div class="widget widget-4 row-fluid"  align="center">
					<div class="separator"></div>
					<div class="input-append" >
						<button onclick="setAppNews()" class="btn btn-block btn-primary btn-icon glyphicons flash" style="width: 300px; background-color: #71c39a"><i></i>插入新闻</button>
					</div>
					
				</div>
			</div>
			
			<hr/>
		</div>
	</div>

    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="${basePath}/statics/admin-res/js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	
    	
    	
    });
    
    //通过api获取新闻
    function getAppNewsByApi() {
		var appids =[];
		appids[0] = $("#appid0").val();
		appids[1] = $("#appid1").val();
		appids[2] = $("#appid2").val();
		
		$("#resultdiv").append("\n" + new Date() + "正在请求数据...");
		$.ajax({
			url:"${basePath}/admin/update-app-news-get",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{
				"ids" : appids,
			},
			traditional:true,
			dataType:"json",
			success:function(data){
				$("#resultdiv").append("\n" + new Date() + "新闻个数:" + data.length);
				$("#resultdiv").append("\n" + new Date() + "新闻标题:");
				$.each(data, function(i, result) {
						$("#resultdiv").append("\n" + i + ": " + result.title);
				})
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
		});	
	}
    
    //根据appname获取appid
    function getAppNameByAppId() {
		var appname = $("#appname").val();
		$.ajax({
			url:"${basePath}/admin/query-appid-json",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{
				"appname" : appname,
			},
			traditional:true,
			dataType:"json",
			success:function(data){
				$("#resultdiv").append("\n" + new Date() + ":appid:" + data.appid);
				
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
			
		});	
	}
    
    //向数据库中插入新闻
    function setAppNews() {
		
		$("#resultdiv").append("\n" + new Date() + "正在向数据库中插入数据...");
		$.ajax({
			url:"${basePath}/admin/update-app-news-set",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{},
			traditional:true,
			dataType:"json",
			success:function(data){
				alert(data);
				$("#resultdiv").append("\n" + new Date() + "插入新闻成功...");
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