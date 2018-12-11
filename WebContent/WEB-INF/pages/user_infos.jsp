<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fc.cps.entity.*"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/CampusPortalSite/jquery3.3.1-jqueryui1.12.1/jquery-ui.css" />
	<script src="/CampusPortalSite/jquery3.3.1-jqueryui1.12.1/jquery-3.3.1.js" charset="utf-8"></script>
	<script src="/CampusPortalSite/jquery3.3.1-jqueryui1.12.1/jquery-ui.js" charset="utf-8"></script>
	<link rel="shortcut icon" href="img_cache/favicon.ico">
	
	<link rel="stylesheet" href="/CampusPortalSite/css/user_infos.css" />
	<script src="/CampusPortalSite/js/user_infos.js" charset="utf-8"></script>
	
	<title>CPS校园门户网站-个人信息页面</title>
</head>
<body>
	<div id="header">
        <div id="logo">
            <a href="/CampusPortalSite/index.jhtml"><img src="img_cache/icon_icon.png" width="200" height="60"></a>
        </div>
        <div id="title">
            <p>个人资料管理</p>
        </div>
        <div class="drop-menu">
        	<c:if test="${UserLoginEntity==null}">
			    <div class="hover-btn">[登录/注册]</div>
			    <div class="drop-content">
			        <a href="javascript:void(0);" onclick="user_login_dialog()">学生账户登录</a>
			        <a href="javascript:void(0);" onclick="user_register_dialog()">学生账户注册</a>
			    </div>
			</c:if>
			<c:if test="${UserLoginEntity!=null}">
			    <div class="hover-btn">[${UserLoginEntity.userEntity.school_id}]</div>
			    <div class="drop-content">
			        <a href="index.jhtml" onclick="">&nbsp;&nbsp;&nbsp;&nbsp;首页</a>
			        <a href="icCard.jhtml" onclick="">IC卡查询</a>
			        <a href="userLogout.jhtml">&nbsp;&nbsp;&nbsp;&nbsp;注销</a>
			    </div>
		    </c:if>
		</div>
    </div>
    <div id="container">
    	<div id="container_left">
    		<ul id="container_left_ul">
    			<li class="select_up"><a href="#">更换头像</a></li>
    			<li class=""><a href="#">个人资料</a></li>
    			<li class=""><a href="#">密码设置</a></li>
    		</ul>
    	</div>
    	<div id="container_right">
    	
    		<div id="user_pic_change_div_right">
    			<div class="before">
		   			<label class="label_before">当前头像</label>
			    	<img class="img_before" src="#" width="200px" height="200px">
    			</div>
		    	<div class="after">
			    	<label class="label_after">选择头像</label>
			    	<img class="img_after" width="200px" height="200px">
		    	</div>
		    	<button>上传头像</button>
		    </div>
		    
    	</div>
    </div>
    
    
    
    
    
    <div id="user_info_div_right">
    
    </div>

	<div id="user_pwd_change_div_right">
		
	</div>
</body>
</html>