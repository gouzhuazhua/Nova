<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
		<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Air -Tree login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="${basePath}/statics/login-res/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}/statics/login-res/css/animate.css">
	<link rel="stylesheet" href="${basePath}/statics/login-res/css/style.css">


	<!-- Modernizr JS -->
	<script src="${basePath}/statics/login-res/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class="style-3">
	<!-- <script type="text/javascript" color="102,204,255" opacity='0.7' zIndex="-2" count="400" src="${basePath}/statics/user-res/theme/canvas-nest.min.js"></script> -->
	<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1>Air -Tree for Steam</h1>
				</div>
			</div>
	
			<div class="row">
				
				
				<div class="col-md-4 col-md-push-8">
					<!-- Start Sign In Form -->
					<form action="${basePath}/login" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
						<h2 style="color: #71c39a">Sign In</h2>
						<div class="form-group">
							<label for="username" class="sr-only">Username</label>
							<input type="text" class="form-control" name="username" id="username" placeholder="昵称" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" class="form-control" name="password" id="password" placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group">
							<p><a href="${basePath}/register-form">注册</a> | <a href="#">忘记密码?</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="登录" class="btn btn-primary">
							
						</div>
						<div class="form-group">
							<h4 style="color: red">${msg }</h4> 
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
		</div>
		
	<!-- jQuery -->
	<script src="${basePath}/statics/login-res/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${basePath}/statics/login-res/js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="${basePath}/statics/login-res/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="${basePath}/statics/login-res/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="${basePath}/statics/login-res/js/main.js"></script>
</body>
</html>