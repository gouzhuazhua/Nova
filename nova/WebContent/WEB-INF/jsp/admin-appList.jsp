<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree Admin</title>
	
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
							<a href="${basePath}/admin-appNews" class="menuToggle">更新新闻</a>
						</li>
						<li  class="active">
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
				<li>update app list</li>
			</ul>
			<div class="separator"></div>
			
			<div class="widget widget-4 widget-body-white">
				<div class="widget-head" ><h4 class="heading">修改APP库app_list:</h4></div>
				<div class="widget-body" style="padding: 10px 0; ">
					<p>app_list表非常重要，请谨慎操作【显示1000条数据】。</p>
				</div>
				<div class="widget-body" style="padding: 10px 0 0;">
					<table class="dynamicTable table table-striped table-bordered table-primary table-condensed">
						<thead>
							<tr>
								<th class="center">序号</th>
								<th>appid</th>
								<th>appname</th>
								<th>easyname</th>
								<th>operation</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${applist}" var="app" varStatus="currentStatus">
							<tr class="gradeX">
								<td class="center">${currentStatus.count}</td>
								<td>${app.appid }</td>
								<td>${app.appname }</td>
								<td>${app.easyname }</td>
								<td><button onclick="showUpdateDiv('${app.appid }' , ' ${app.appname }' , ' ${app.easyname } ')" class="btn btn-block btn-warning btn-icon glyphicons circle_exclamation_mark"><i></i>修改</button></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			
			<hr />
			<div class="widget widget-4">
				<div class="widget-head" ><h4 class="heading">更新APP库app_list:</h4></div>
				<div class="widget-body" style="padding: 10px 0; " align="center">
					<p>点击此按钮将会更新数据库中所有APP，包括[appid]以及[appname]。</p>
					<p>更新内容较大，预计时间超过10s；更新前请确认是否需要。</p>
				</div>
				<div class="widget widget-4 row-fluid"  align="center">
					<div class="separator"></div>
					<div class="input-append" >
						<button onclick="updateAppList()" class="btn btn-block btn-primary btn-icon glyphicons flash" style="width: 300px; background-color: #71c39a"><i></i>更新</button>
					</div>
					<div class="widget-body" style="padding: 10px 0; ">
					<p>操作日志：</p>
					</div>
					<div class="input-append">
					  	<textarea id="resultdiv" rows="9" cols="" style="width: 450px"></textarea>
					</div>
				</div>
			</div>
			<hr />
			<div id="updateDiv" style="visibility:hidden; z-index:100; position: relative; float:right; top: -1000px; right: 200px; background-color: #ffffff; border: solid; border-width: 3px; border-color: #71c39a">
				<div class="row-fluid">
					<div class="span3">
						<strong>修改应用详细</strong>
						<p class="muted">修改之前请确认，app_list作为参考表十分重要。</p>
					</div>
					<div class="span9">
						<label for="inputUsername">appid</label>
						<input type="text" id="inputAppid" class="span10" value=""  disabled="disabled"/>
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="[appid]不能被修改"><i></i></span>
						<div class="separator"></div>
								
						<label for="inputPasswordOld">appname</label>
						<input type="text" id="inputAppname" class="span10" value="" />
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="尽量不要修改"><i></i></span>
						<div class="separator"></div>
						
						<label for="inputPasswordNew">easyname</label>
						<input type="text" id="inputEasyname" class="span12" value=""  />
						<div class="separator"></div>
						
						<label for="inputPasswordNew2"></label>
						<button onclick="closeUpdateDiv()" class="btn btn-block btn-info btn-icon glyphicons flash"><i></i>取消</button>
						<button onclick="updateApp()" class="btn btn-block btn-inverse btn-icon glyphicons ok"><i></i>修改</button>
						<div class="separator"></div>
					</div>
				</div>
			</div>
			
		</div>
	</div>

    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="${basePath}/statics/admin-res/js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	//从数据库获取app_list
    	/*
    	$.ajax({
			url:"${basePath}/admin/get-app-list-db",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{},
			traditional:true,
			dataType:"json",
			success:function(data){
				if(data != null){
					$.each(data, function(i, result) {
						item = "<tr><td>" + i + "</td><td>" + result["appid"] + "</td><td>" + result["appname"]+ "</td><td>" + result["easyname"] + "</td><td><a href='javascript:void(0);' onclick=\"showUpdateDiv("+ i + ")\">修改</a></td></tr>"
						$("#applisttd").append(item);
					})
				}
				$("#resultdiv").append("\n" + new Date() + "app_list获取成功");
				
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
		});	*/
    	
    	
    });
    
    //更新app_list
    function updateAppList() {
    	$("#resultdiv").append("\n" + new Date() + "开始请求数据...");
		$.ajax({
			url:"${basePath}/admin/update-app-list",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{},
			traditional:true,
			dataType:"json",
			success:function(data){
				if(data == "更新APP库成功"){
					$("#resultdiv").append("\n" + new Date() + "更新数据库app_list数据成功");
					window.location.reload();
				}
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
		});	
		
	}
    
    //显示修改框
    function showUpdateDiv(appid, appname, easyname) {
		$("#updateDiv").css("visibility", "visible");
		$("#inputAppid").val(appid);
		$("#inputAppname").val(appname);
		$("#inputEasyname").val(easyname);
	}
    
    //关闭修改框
    function closeUpdateDiv() {
    	$("#updateDiv").css("visibility", "hidden");
	}
    
    //修改APP
    function updateApp() {
		var appid = $("#inputAppid").val();
		var appname = $("#inputAppname").val();
		var easyname = $("#inputEasyname").val();
		
		$.ajax({
			url:"${basePath}/admin/update-app",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{
				"appid" : appid,
				"appname" :appname,
				"easyname" : easyname,
			},
			traditional:true,
			dataType:"json",
			success:function(data){
				if(data == "APP更新成功"){
					$("#updateDiv").css("visibility", "hidden");
					alert(data);
					window.location.reload();
				}
				else{
					$("#updateDiv").css("visibility", "hidden");
					alert(data);
				}
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