<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree Register</title>
	
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
							<a href="${basePath}/register-form" class="menuToggle">欢迎你的到来</a>
						</li>
					</ul>
					
					<span class="profile">
						<span>
							<strong>已有用户？请</strong>
							<a href="${basePath}/login-form">登录 </a>
						</span>
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
				<li>register</li>
			</ul>
			<div class="separator"></div>
			<div class="heading-buttons">
				<h2>用户注册<span>| Register</span></h2>
			</div>
			<div class="separator bottom"></div>


			<!-- 注册开始 -->
			
			<div class="row-fluid">
				<div class="span3">
				</div>
				<div class="span9">
					<div class="row-fluid">
					<div class="span6">
						<label for="inputPhone">昵称</label>
						<div class="input-prepend">
							<span class="add-on glyphicons user"><i></i></span>
							<input type="text" id="inputUsername" class="input-large" placeholder="username" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="昵称用于登录"><i></i></span>
						</div>
						<div id="tip-username" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
						
						<label for="inputPhone">电话</label>
						<div class="input-prepend">
							<span class="add-on glyphicons phone"><i></i></span>
							<input type="text" id="inputPhone" class="input-large" placeholder="01234567897" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="电话用于发送验证码"><i></i></span>
						</div>
						<div id="tip-phone" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
						
						<label for="inputEmail">电子邮箱</label>
						<div class="input-prepend">
							<span class="add-on glyphicons envelope"><i></i></span>
							<input type="text" id="inputEmail" class="input-large" placeholder="contact@mosaicpro.biz" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="邮箱用于验证"><i></i></span>
						</div>
						<div id="tip-email" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
							
						<label for="inputWebsite">Steam ID</label>
						<div class="input-prepend">
							<span class="add-on glyphicons link"><i></i></span>
							<input type="text" id="inputSteamid" class="input-large" placeholder="76561198076512211" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="Steam ID用于绑定steam账户"><i></i></span>
						</div>
						<div id="tip-steamid" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
						
						<label for="inputPassword">密码</label>
						<div class="input-prepend">
							<span class="add-on glyphicons phone"><i></i></span>
							<input type="password" id="inputPassword" class="input-large" placeholder="******" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="登录密码"><i></i></span>
						</div>
						<div id="tip-password" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
					
						<label for="inputPhone">重复密码</label>
						<div class="input-prepend">
							<span class="add-on glyphicons phone"><i></i></span>
							<input type="password" id="inputValidatePassword" class="input-large" placeholder="******" style="width: 360px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="重复输入密码以确认"><i></i></span>
						</div>
						<div id="tip-validatePassword" style="z-index:100; position:relative; float:right; right:-342px; top:-40px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
						<div class="separator"></div>
					</div>
					</div>
				</div>
			</div>
			<div class="form-actions" style="margin: 0; padding-right: 0;">
				<button id="buttonSubmit" class="btn btn-icon btn-primary glyphicons circle_ok pull-right" style="width: 100px;" onclick="register()"><i></i>注册</button>
			</div>
			
			<div id="registerResult" align="center" style="visibility:hidden; position:relative; float:left; left:180px; top:-500px; width:500px; height:200px;  margin-bottom: 0; border-style:solid; background-color:#ffffff; border-width:3px; border-color:#71c39a">
				<h3 id="msg"></h3>
				<p id="congraMsg" style="visibility:">恭喜用户 <font color="red" face="Motiva Sans" id="usernameSuc"></font>, 注册成功</p><br><br>
				
				<h4><a href="${basePath}/login-form">转到登录</a> </h4>
			</div>			
			<!-- loading图 -->
			<div id="loadingDiv" style="visibility:hidden; position: relative; top: -500px; right: 130px;">
				<img alt="" src="${basePath}/statics/user-res/theme/images/loading.gif"><br />
				<p style="position: relative; right: -25px;">正在注册</p> 
			</div>
			<div class="separator bottom line"></div>

					<br />
					<a href="documentation.html" title="">Documentation</a> - Collect from <a href="#" title="Air Tree" target="_blank">Air Tree</a>	
		</div>	
	</div>
	
	<script type="text/javascript" src="http://www.wodexiangce.cn/js/jquery-1.11.3.min.js"></script>
	
	<script type="text/javascript">
	var booUsername = false;
	var booPhone = false;
	var booEmail = false;
	var booSteamid = false;
	var booPassword = false;
	var booValidatePassword = false;
	
	$(document).ready(function(){
		var regBox = {
				regUsername : /^[a-zA-Z0-9_-]{4,11}$/,
				regPhone : /^[0-9]{11}$/,
				regEmail : /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/,
				regSteamid : /^[0-9]{17}$/,
				regPassword : /^[a-zA-Z0-9_]{4,11}$/,
		}
		           
		//验证用户名
		$("#inputUsername").focus(function() { 
			$("#tip-username").css("color","black");
			$("#tip-username").html("请输入由4到11位数字、字母或下划线组成的昵称");
			$("#tip-username").css("visibility","visible");
		});
		$("#inputUsername").blur(function(){
			var username = $("#inputUsername").val();
			if(username==null || username==""){
				$("#tip-username").html("用户名不能为空");
			}else{
				if(regBox.regUsername.test(username)){
					booUsername = true;
					$("#tip-username").css("visibility","hidden");
				}else{
					booUsername = false;
					$("#tip-username").html("用户名格式错误");
				}
			}
			if(username!= null && username!=""){
				$("#tip-username").html("正在检测用户名是否可用...");
				$.ajax({
					url:"${basePath}/validate-username?username=" + username,
					type:"get",
					contentType:"application/json;charset=UTF-8",
					data:null,
					dataType:"json",
					success:function(data){
						if(data == "用户名已存在"){
							$("#tip-username").html("用户名已存在");
							$("#tip-username").css("color","red");
							$("#tip-username").css("visibility","visible");
							booUsername = false;
						}else{
							$("#tip-username").html("用户名可用");
							$("#tip-username").css("color","green");
							$("#tip-username").css("visibility","visible");
							booUsername = true;
						}
					},
					error:function(XMLHttpRequest, textStatus, errorThrown){
						 alert(XMLHttpRequest.status);
						 alert(XMLHttpRequest.readyState);
						 alert(textStatus);
				    }
					
				});	
			}
				
			
		});
		
		
		
		//验证手机号
		$("#inputPhone").focus(function() {  
			$("#tip-phone").html("请输入11位数字手机号码");
			$("#tip-phone").css("visibility","visible");
		});
		$("#inputPhone").blur(function(){
			var phone = $("#inputPhone").val();
			
			if(phone==null || phone==""){
				$("#tip-phone").html("手机号码不能为空");
			}else{
				if(regBox.regPhone.test(phone)){
					booPhone = true;
					$("#tip-phone").css("visibility","hidden");
				}else{
					booPhone = false;
					$("#tip-phone").html("手机格式错误");
				}
			}
		});
		
		//验证邮箱
		$("#inputEmail").focus(function() {  
			$("#tip-email").html("请输入正确格式的电子邮箱");
			$("#tip-email").css("visibility","visible");
		});
		$("#inputEmail").blur(function(){
			var email = $("#inputEmail").val();
			
			if(email==null || email==""){
				$("#tip-email").html("电子邮箱不能为空");
			}else{
				if(regBox.regEmail.test(email)){
					booEmail = true;
					$("#tip-email").css("visibility","hidden");
				}else{
					booEmail = false;
					$("#tip-email").html("电子邮箱格式错误");
				}
			}
		});
		
		//验证steamid
		$("#inputSteamid").focus(function() {  
			$("#tip-steamid").html("请输入玩家64 位 Steam ID");
			$("#tip-steamid").css("visibility","visible");
		});
		$("#inputSteamid").blur(function(){
			var steamid = $("#inputSteamid").val();
			
			if(steamid==null || steamid==""){
				$("#tip-steamid").html("Steam ID不能为空, 玩家64 位 Steam ID在他们的Steam个人资料URL栏中可以看到(17位数字)");
			}else{
				if(regBox.regSteamid.test(steamid)){
					booSteamid = true;
					$("#tip-steamid").css("visibility","hidden");
				}else{
					booSteamid = false;
					$("#tip-steamid").html("Steam ID格式错误");
				}
			}
		});
		
		//验证密码
		$("#inputPassword").focus(function() {  
			$("#tip-password").html("请输入由4-16位数字、字母和下划线组成的密码");
			$("#tip-password").css("visibility","visible");
		});
		$("#inputPassword").blur(function(){
			var password = $("#inputPassword").val();
			if(password==null || password==""){
				$("#tip-password").html("密码不能为空");
			}else{
				if(regBox.regPassword.test(password)){
					booPassword = true;
					$("#tip-password").css("visibility","hidden");
				}else{
					booPassword = false;
					$("#tip-password").html("密码格式错误");
				}
			}
		});
		
		//验证重复输入密码
		$("#inputValidatePassword").focus(function() {  
			$("#tip-validatePassword").html("请再次输入密码");
			$("#tip-validatePassword").css("visibility","visible");
		});
		$("#inputValidatePassword").blur(function(){
			var password = $("#inputPassword").val();
			validatePassword = $("#inputValidatePassword").val();
			
			if(validatePassword==null || validatePassword==""){
				$("#tip-validatePassword").html("密码重复不能为空");
			}else{
				if(password == validatePassword){
					booValidatePassword = true;
					$("#tip-validatePassword").css("visibility","hidden");
				}else{
					booValidatePassword = false;
					$("#tip-validatePassword").html("两次密码不一致");
				}
			}
			
			
		});
		
	});
	
	//设置注册按钮是否可用
	function checkSubmit() {
		if(booUsername == true && booPhone == true && booEmail == true && booSteamid == true && booPassword == true && booValidatePassword == true){
			$("#buttonSubmit").attr("disabled", false);
		}else {
			$("#buttonSubmit").attr("disabled", true);
		}
	}
	//每隔0.1s调用方法判断
	window.setInterval(checkSubmit,100);
	
	
	//ajax注册
	function register() {
		var username = $("#inputUsername").val();
		var phone = $("#inputPhone").val();
		var email = $("#inputEmail").val();
		var steamid = $("#inputSteamid").val();
		var password = $("#inputPassword").val();
		
		$("#loadingDiv").css("visibility","visible");
		$.ajax({
			url:"${basePath}/register?username=" + username + "&userphone=" + phone + "&email=" + email + "&steamid=" + steamid + "&password=" + password,
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:null,
			dataType:"json",
			success:function(data){
				$("#loadingDiv").css("visibility","hidden");
				$("#registerResult").css("visibility","visible");
				if(data != "注册失败！"){
					$("#msg").html("注册成功！");
					$("#usernameSuc").html(data.username);
				}else{
					$("congraMsg").css("visibility","hidden");
					$("#msg").html("注册失败！");
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