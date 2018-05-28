<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Save Product</title>
<style type="text/css">@import url(css/main.css);</style>
</head>
<body>
<div id="global">
    <h1>我的游戏</h1>
    <h4>appid | played_forever_time</h4>
    <p>

    <c:forEach items="${myGames}" var="g">
    	<font color='red'>${g.appid}</font>
    	${g.name}
    	${g.playtime_forever}
        <hr style="color:green;align:left" />
        <br />  
    </c:forEach>

    </p>
</div>
</body>
</html>