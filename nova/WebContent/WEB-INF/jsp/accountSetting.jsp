<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<title>AIR - Tree Account</title>
	
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
						<li>
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
								<li class="hasSubmenu">
									<a data-toggle="collapse" class="" href="#menu_forms1"><span>敬请期待<i class="icon-chevron-right icon-white"></i></span></a>
									<ul class="collapse" id="menu_forms1">
										<li class=""><a href="#"><span>Dota2饰品</span></a></li>
										<li class=""><a href="#"><span>绝地求生饰品</span></a></li>
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
						<a class="img" href="#"><img src="${USER_AVATAR}" alt="Mr. Awesome" /></a>
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
				<li>account</li>
			</ul>
			<div class="separator"></div>
			
			<div class="heading-buttons">
				<h2>账户详情<span>| Account details</span></h2>
			</div>
			<div class="separator bottom"></div>

			<!-- 修改账户开始 -->
			<div class="widget widget-2 widget-tabs widget-tabs-2 tabs-right border-bottom-none">
				<div class="widget-head">
					<ul>
						<li class="active"><a class="glyphicons settings"  data-toggle="tab"><i></i>Account settings</a></li>
					</ul>
				</div>
			</div>
				
			<div class="tab-content" style="padding: 0;">
				<div class="tab-pane active" id="account-settings">
					<div class="row-fluid">
						<div class="span3">
							<strong>修改密码</strong>
							<p class="muted"></p>
						</div>
						<div class="span9">
							<label for="inputUsername">昵称</label>
							<input type="text" id="inputUsername" class="span10" value="${user.username }" disabled="disabled" style="width: 400px"/>
							<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="昵称不能被修改"><i></i></span>
							<div class="separator"></div>
									
							<label for="inputPasswordOld">旧密码</label>
							<input type="password" id="inputPasswordOld" class="span10" value="" placeholder="inputPasswordOld" style="width: 400px"/>
							<div id="tip-passwordOld" style="position:relative; float:right; right:0px; top:0px; width: 240px;height: 30px; visibility: hidden;" align="left">test</div>
							<div class="separator"></div>
							
							<label for="inputPasswordNew">新密码</label>
							<input type="password" id="inputPassword" class="span12" value="" placeholder="inputPasswordNew" style="width: 400px"/>
							<div id="tip-password" style="position:relative; float:right; right:0px; top:0px; width: 240px;height: 30px; visibility: hidden;" align="left">test</div>
							<div class="separator"></div>
							
							<label for="inputPasswordNew2">重复新密码</label>
							<input type="password" id="inputValidatePassword" class="span12" value="" placeholder="inputPasswordNewAgain" style="width: 400px"/>
							<div id="tip-validatePassword" style="position:relative; float:right; right:0px; top:0px; width: 240px;height: 30px; visibility: hidden;" align="left">test</div>
							<div class="separator"></div>
						</div>
					</div>
					<hr class="separator line" />
					<div class="row-fluid">
						<div class="span3">
							<strong>账户细节</strong>
							<p class="muted"></p>
						</div>
						<div class="span9">
							<div class="row-fluid">
							<div class="span6">
								<label for="inputPhone">电话</label>
								<div class="input-prepend">
									<span class="add-on glyphicons phone"><i></i></span>
									<input type="text" id="inputPhone" class="input-large" value="${user.userphone }" style="width: 360px"/>
								</div>
								<div id="tip-phone" style="z-index:100; position:relative; float:right; right:-342px; top:-30px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
								<div class="separator"></div>
									
								<label for="inputEmail">电子邮箱</label>
								<div class="input-prepend">
									<span class="add-on glyphicons envelope"><i></i></span>
									<input type="text" id="inputEmail" class="input-large" value="${user.email }" style="width: 360px"/>
								</div>
								<div id="tip-email" style="z-index:100; position:relative; float:right; right:-342px; top:-30px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
								<div class="separator"></div>
									
								<label for="inputWebsite">Steam ID</label>
								<div class="input-prepend">
									<span class="add-on glyphicons link"><i></i></span>
									<input type="text" id="inputSteamid" class="input-large" value="${user.steamid }" style="width: 360px"/>
								</div>
								<div id="tip-steamid" style="z-index:100; position:relative; float:right; right:-342px; top:-30px; width: 240px;height: 30px; visibility: hidden; align="left"></div>
								<div class="separator"></div>
							</div>
							</div>
						</div>
					</div>
					<div class="form-actions" style="margin: 0; padding-right: 0;">
						<button id="buttonSubmit"  class="btn btn-icon btn-primary glyphicons circle_ok pull-right" onclick="updateUserInfo()" ><i></i>更新</button>
					</div>
					
					<div id="updateResult" align="center" style="visibility:hidden; position:relative; float:left; left:180px; top:-550px; width:500px; height:200px;  margin-bottom: 0; border-style:solid; background-color:#ffffff; border-width:3px; border-color:#71c39a">
						<h3 id="msg"></h3>
						<br><br><br><br><br><br>
						
						<h4><a href="${basePath}/account-setting">返回</a> </h4>
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
	<script type="text/javascript">
	var booPhone = true;
	var booEmail = true;
	var booSteamid = true;
	var booPasswordOld = false;
	var booPassword = false;
	var booValidatePassword = false;
	
	$(document).ready(function(){
		var regBox = {
				regPhone : /^[0-9]{11}$/,
				regEmail : /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/,
				regSteamid : /^[0-9]{17}$/,
				regPassword : /^[a-zA-Z0-9_]{4,11}$/,
		}
		
		
		//验证旧密码
		$("#inputPasswordOld").focus(function() {  
			$("#tip-passwordOld").html("请输入旧密码");
			$("#tip-passwordOld").css("visibility","visible");
		});
		$("#inputPasswordOld").blur(function(){
			var passwordOld = $("#inputPasswordOld").val();
			if(passwordOld==null || passwordOld==""){
				$("#tip-passwordOld").html("旧密码不能为空");
			}else{
				$("#tip-passwordOld").html("正在检测旧密码是否正确...");
				$.ajax({
					url:"${basePath}/validate-passwordOld?passwordOld=" + passwordOld,
					type:"get",
					contentType:"application/json;charset=UTF-8",
					data:null,
					dataType:"json",
					success:function(data){
						if(data == passwordOld){
							booPasswordOld = true;
							$("#tip-passwordOld").html("旧密码正确");
							$("#tip-passwordOld").css("color","green");
						}else{
							booPasswordOld = false;
							$("#tip-passwordOld").html("旧密码错误");
							$("#tip-passwordOld").css("color","red");
						}
					},
					error:function(e){
					      alert("错误！！");
					      window.clearInterval(timer);
				    }
					
				});	 
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
		
	});
	
	//设置注册按钮是否可用
	function checkSubmit() {
		if(booPasswordOld == true && booPhone == true && booEmail == true && booSteamid == true && booPassword == true && booValidatePassword == true){
			$("#buttonSubmit").attr("disabled", false);
		}else {
			$("#buttonSubmit").attr("disabled", true);
		}
	}
	//每隔0.1s调用方法判断
	window.setInterval(checkSubmit,100);
	</script>
	
	<script type="text/javascript">
	//更新个人资料
	function updateUserInfo() {
		var username = $("#inputUsername").val();
		var phone = $("#inputPhone").val();
		var email = $("#inputEmail").val();
		var steamid = $("#inputSteamid").val();
		var password = $("#inputPassword").val();
		
		$.ajax({
			url:"${basePath}/updateUser?username=" + username + "&userphone=" + phone + "&email=" + email + "&steamid=" + steamid + "&password=" + password,
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:null,
			dataType:"json",
			success:function(data){
				$("#updateResult").css("visibility", "visible");
				if(data == "updatesuc"){
					$("#msg").html("个人资料更新成功！");
				}else{
					$("#msg").html("个人资料更新失败！");
				}
				
				
			},
			error:function(e){
			      alert("错误！！");
			      window.clearInterval(timer);
		    }
			
		});	
	}
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