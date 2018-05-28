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
						<li  class="active">
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
				<div class="widget-head" ><h4 class="heading">修改用户库user:</h4></div>
				<div class="widget-body" style="padding: 10px 0; ">
					<p>user表非常重要，请谨慎操作【显示所有数据】。</p>
				</div>
				<div class="widget-body" style="padding: 10px 0 0;">
					<table class="dynamicTable table table-striped table-bordered table-primary table-condensed">
						<thead>
							<tr>
								<th class="center">序号</th>
								<th>username</th>
								<th>email</th>
								<th>userphone</th>
								<th>password</th>
								<th>steamid</th>
								<th>isadmin</th>
								<th>operation</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${users}" var="user" varStatus="currentStatus">
							<tr class="gradeX">
								<td class="center">${currentStatus.count}</td>
								<td>${user.username }</td>
								<td>${user.email }</td>
								<td>${user.userphone }</td>
								<td>${user.password }</td>
								<td>${user.steamid }</td>
								<td>${user.isAdmin }</td>
								<td><button onclick="showUpdateDiv('${user.username }' , ' ${user.email }' , ' ${user.userphone } ' , ' ${user.password } ' , ' ${user.steamid } ' , ' ${user.isAdmin } ')" class="btn btn-block btn-warning btn-icon glyphicons circle_exclamation_mark"><i></i>修改</button></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			
			<hr />
			<div id="updateDiv" style="visibility:hidden; z-index:100; position: relative; float:right; top: -550px; right: 200px; background-color: #ffffff; border: solid; border-width: 3px; border-color: #71c39a">
				<div class="row-fluid">
					<div class="span3">
						<strong>修改用户详细</strong>
						<p class="muted">修改之前请确认，用户资料非常重要。</p>
					</div>
					<div class="span9">
						<label for="inputUsername">Username</label>
						<input type="text" id="inputUsername" class="span10" value=""  disabled="disabled"/>
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="[username]不能被修改"><i></i></span>
								
						<label for="inputPasswordOld">Email</label>
						<input type="text" id="inputEmail" class="span10" value="" />
						
						<label for="inputPasswordOld">Phone</label>
						<input type="text" id="inputPhone" class="span10" value="" />
						
						<label for="inputUsername">Password</label>
						<input type="text" id="inputPassword" class="span10" value="" />
						
						<label for="inputUsername">Steamid</label>
						<input type="text" id="inputSteamid" class="span10" value="" />
						
						<label for="inputUsername">Isadmin</label>
						<input type="text" id="inputIsadmin" class="span10" value="" />
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="设置0：不是管理员；设置1：是管理员"><i></i></span>
						<div class="separator"></div>
						
						<label for="inputPasswordNew2"></label>
						<button onclick="closeUpdateDiv()" class="btn btn-block btn-info btn-icon glyphicons flash"><i></i>取消</button>
						<button onclick="updateUser()" class="btn btn-block btn-inverse btn-icon glyphicons ok"><i></i>修改</button>
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
    	
    	
    });
    
    
    //显示修改框
    function showUpdateDiv(username, email, phone, password, steamid, isadmin) {
		$("#updateDiv").css("visibility", "visible");
		
		$("#inputUsername").val(username);
		$("#inputEmail").val(email);
		$("#inputPhone").val(phone);
		$("#inputPassword").val(password);
		$("#inputSteamid").val(steamid);
		$("#inputIsadmin").val(isadmin);
    }
    
    //关闭修改框
    function closeUpdateDiv() {
    	$("#updateDiv").css("visibility", "hidden");
	}
    
    //更新用户个人资料
    function updateUser() {
		var username = $("#inputUsername").val();
		var email = $("#inputEmail").val();
		var phone = $("#inputPhone").val();
		var password = $("#inputPassword").val();
		var steamid = $("#inputSteamid").val();
		var isadmin = $("#inputIsadmin").val();
		
		//alert(username + ":" + email + ":" + phone + ":" + password + ":" + steamid + ":" + isadmin);
		$.ajax({
			url:"${basePath}/admin/update-user",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{
				"username" : username,
				"email" :email,
				"userphone" : phone,
				"password" : password,
				"steamid" : steamid,
				"isadmin" : isadmin,
			},
			traditional:true,
			dataType:"json",
			success:function(data){
				if(data == "用户资料更新成功"){
					$("#updateDiv").css("visibility", "hidden");
					alert(data);
					window.location.reload();
				}
				else{
					$("#updateDiv").css("visibility", "hidden");
					alert(data);
					window.location.reload();
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