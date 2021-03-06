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
						<li   class="active">
							<a href="${basePath}/admin-item-update" class="menuToggle">饰品资料</a>
							<ul class="menu hide">
								<li ><a href="${basePath}/admin-item-upload"><span>上传饰品</span></a></li>
								<li class="active"><a href="${basePath}/admin-item-update"><span>修改饰品</span></a></li>
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
				<div class="widget-head" ><h4 class="heading">管理【饰品】item_list:</h4></div>
				<div class="widget-body" style="padding: 10px 0; ">
					<p>在这里设置需要展示的饰品。</p>
				</div>
				<div class="widget-body" style="padding: 10px 0 0;">
					<table class="dynamicTable table table-striped table-bordered table-primary table-condensed" style="table-layout: fixed">
						<thead>
							<tr>
								<th class="center">No.</th>
								<th>名称</th>
								<th>level</th>
								<th>价格</th>
								<th>游戏</th>
								<th>图片</th>
								<th>摘要</th>
								<th>信息</th>
								<th>isshowed</th>
								<th>operation</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${items}" var="item" varStatus="currentStatus">
							<tr class="gradeX">
								<td class="center">${currentStatus.count}</td>
								<td>${item.itemname }</td>
								<td>${item.itemlevel }</td>
								<td>${item.itemprice }</td>
								<td>${item.itemcategory }</td>
								<td><img alt="" src="${item.itemaddress }"> </td>
								<td style="overflow: hidden;white-space: nowrap; text-overflow: ellipsis;">${item.itemabstract }</td>
								<td style="overflow: hidden;white-space: nowrap; text-overflow: ellipsis;">${item.iteminfo }</td>
								<td>${item.isshowed }</td>
								<td><button onclick="showUpdateDiv('${item.id }','${item.itemname }','${item.itemprice }','${item.itemabstract }','${item.iteminfo }','${item.isshowed }')" class="btn btn-block btn-success ">修改</button>
									<button onclick="deleteItem('${item.id }')" class="btn btn-block btn-danger ">删除</button> </td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			<hr />
			<div id="updateDiv" style="visibility:hidden; z-index:100; position: relative; float:right; top: -800px; right: 200px; background-color: #ffffff; border: solid; border-width: 3px; border-color: #71c39a">
				<div class="row-fluid">
					<div class="span3">
						<strong>修改饰品详细</strong>
						<p class="muted">修改之前请确认相关信息是否正确。</p>
					</div>
					<div class="span9">
						<input type="text" id="inputItemid" class="span10" value=""  style="visibility: hidden"/>
						<label for="inputUsername">饰品名称</label>
						<input type="text" id="inputItemname" class="span10" value=""  />
								
						<label for="inputPasswordOld">饰品等级</label>
						<select id="inputItemlevel" style="width: 350px;">
							<optgroup label="csgo" id="csgolevel">
								<option value="csgo-0">消费级</option>
							    <option value="csgo-1 ">工业级</option>
							    <option value="csgo-2">军规级</option>
							    <option value="csgo-3">受限级</option>
							    <option value="csgo-4">保密级</option>
							    <option value="csgo-5">隐秘级</option>
							    <option value="csgo-6">违禁级</option>
							    <option value="csgo-7">特殊物品</option>
							</optgroup>
							<optgroup label="dota2" id="dota2level">
								<option value="dota2-0">普通</option>
							    <option value="dota2-1">罕见</option>
							    <option value="dota2-2">稀有</option>
							    <option value="dota2-3">神话</option>
							    <option value="dota2-4">传说</option>
							    <option value="dota2-5">不朽</option>
							    <option value="dota2-6">至宝</option>
							</optgroup>
							<optgroup label="pubg" id="pubglevel">
								<option value="pubg-0">普通</option>
							    <option value="pubg-1">罕见</option>
							    <option value="pubg-2">稀有</option>
							</optgroup>
						  
						</select>
						
						<label for="inputPasswordOld">饰品价格</label>
						<input type="text" id="inputItemprice" class="span10" value="" />
						
						<label for="inputUsername">饰品类别</label>
						<select style="width: 350px;" id="inputItemcategory">
							<option value ="1">csgo</option>
						    <option value ="2">dota2</option>
						    <option value="3">pubg</option>
						</select>
						
						<label for="inputUsername">饰品摘要</label>
						<input type="text" id="inputItemabstract" class="span10" value="" />
						
						<label for="inputUsername">饰品信息</label>
						
						<textarea rows="5" cols="" id="inputIteminfo" style="width: 340px;"></textarea>
						
						<label for="inputUsername">是否展示</label>
						<input type="text" id="inputIsshowed" class="span10" value="" />
						<span style="margin: 0;" class="btn-action single glyphicons circle_question_mark" data-toggle="tooltip" data-placement="top" data-original-title="设置0：不展示；设置1：展示"><i></i></span>
						
						<label for="inputUsername">饰品图片</label>
						<div class="fileupload fileupload-new" data-provides="fileupload">
							<span>上传图片：</span>
							<input type="file" id="inputItempicture"  style="width: 300px;">
						</div>
						
						<div class="separator"></div>
						
						<label for="inputPasswordNew2"></label>
						<button onclick="closeUpdateDiv()" class="btn btn-block btn-info btn-icon glyphicons flash"><i></i>取消</button>
						<button onclick="updateItem()" class="btn btn-block btn-inverse btn-icon glyphicons ok"><i></i>修改</button>
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
    function showUpdateDiv(id, itemname, itemprice, itemabstract, iteminfo, isshowed) {
		$("#updateDiv").css("visibility", "visible");
		
		//alert(itemname + itemprice + itemabstract + iteminfo + isshowed);
		$("#inputItemid").val(id);
		$("#inputItemname").val(itemname);
		$("#inputItemprice").val(itemprice);
		$("#inputItemabstract").val(itemabstract);
		$("#inputIteminfo").val(iteminfo);
		$("#inputIsshowed").val(isshowed);
    }
    
    //关闭修改框
    function closeUpdateDiv() {
    	$("#updateDiv").css("visibility", "hidden");
	}
    
    //修改APP
    function updateItem() {
    	var itemid = $("#inputItemid").val();
    	var itemname = $("#inputItemname").val();
		var itemlevel = $("#inputItemlevel").val();
		var itemprice = $("#inputItemprice").val();
		var itemcategory = $("#inputItemcategory").val();
		var itemabstract = $("#inputItemabstract").val();
		var iteminfo = $("#inputIteminfo").val();
		var isshowed = $("#inputIsshowed").val();
		
		var formData = new FormData();
		formData.append("id", itemid);
		formData.append("itemname", itemname);
		formData.append("itemlevel", itemlevel);
		formData.append("itemprice", itemprice);
		formData.append("itemcategory", itemcategory);
		formData.append("itemabstract", itemabstract);
		formData.append("iteminfo", iteminfo);
		formData.append("isshowed", isshowed);
		formData.append("itempicture", $("#inputItempicture")[0].files[0]);
		
		$.ajax({  
	          url: "${basePath}/admin/update-item",  
	          type: "POST",  
	          data: formData,  
	          async: false,  
	          cache: false,  
	          contentType: false,  
	          processData: false,  
	          dataType:"json",
	          success: function (data) { 
	        	  $("#updateDiv").css("visibility", "hidden");
	        	  if(data == "更新成功"){
	        		  alert(data); 
	        		  window.location.reload();
	        	  }
	          },  
	          error: function (data) {  
	              //alert(data);  
	              window.location.reload();
	          }  
	     });
	}
    
    
    //删除饰品
    function deleteItem(itemid) {
    	
    	$.ajax({
			url:"${basePath}/admin/delete-item",
			type:"get",
			contentType:"application/json;charset=UTF-8",
			data:{
				"id" : itemid,
			},
			traditional:true,
			dataType:"json",
			success:function(data){
				if("删除成功"){
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
	
	<!-- ColorPicker -->
	<script src="${basePath}/statics/user-res/theme/scripts/farbtastic/farbtastic.js" type="text/javascript"></script>
	
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