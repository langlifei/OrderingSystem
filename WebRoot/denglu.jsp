<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  </head>
  		
 	<body>
		<!--主体结构代码-->
		<div class="main">	
		<!--第一行导航条代码-->
			<div class="top">
				<!--会员菜单-->
				<div class="top1">
						<a href="denglu.jsp">会员登录</a> |
			            <a href="zhuce.jsp">会员注册</a> |
						<a href="denglu.jsp">注销登录</a> |
						<a href="pwisong.jsp">配送说明</a> |
						<a href="about.jsp">关于我们</a>
				</div>
				<!--用户选择导航-->
					<!--logo区域-->
					<div class="logo">
					</div>
					<div class="mid1">&nbsp;</div>
					<div class="mid2">
						<a href="home.jsp">首页</a><a href="canche.jsp">我的餐车</a><a href="dingdan.jsp">我的订单</a><a href="zhuce.jsp">用户中心</a><a href="peisong.jsp">配送说明</a><a href="about.jsp">关于我们</a><a href="denglu.jsp">注销退出</a>
					</div>
					<p><hr width="896" color="darkorange" size="5"/></p>
			</div>
			<div class="D">
				<p align="center">请先登录！</p>
				<div class="D1">
					<div class="D2"> 
		<form action = "login.jsp" method = "post">		
		    <table id="table1" width="300px" height="150px">
            <tr>
              <td align="right" width="85px">账号：</td>
              <td ><input type="text" name = "username"></td>
            </tr>
            <tr>
              <td align="right">密码：</td>
              <td><input type="password" name = "password"/></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td align="center"><input type="image" src="img/denglu.gif" >&nbsp;<a href = "zhuce.jsp"><img src = "img/zhuce.gif"></a></td>
            </tr>
          </table>
          </form>
          </div>
				<div class="D3"> 
			<table width="300px" height="150px">
            <tr>
              <td ><img src="img/cateitems.gif" width="10" height="10">如果您已经是会员，请在左侧登录</td>
            </tr>
            <tr>
              <td><img src="img/cateitems.gif" width="10" height="10">如果您还没有注册会员，点击这里<a href="zhuce.jsp"><font  color="#FF9900">注册会员</font></a></td>
            </tr>
            <tr>
              <td></td><p><img src="img/cateitems.gif" width="10" height="10">如果您忘记了密码，点击这里<a href="zhuce.jsp"><font  color="#FF66CC"/>重设一个密码</font></a></p>
            </tr>
          </table>
          </div>
		</div>	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="content4">
					<p align="center"><hr  style="height:4px"  color="#FFCC99"></p>
		    	<p align="center"><a href="about.jsp">|关于我们</a><a href="peisong.jsp">|配送说明|</a></p>
                <p align="center">Copyight(c)2015-2020</p>
				</div>
			
		<!--中间内容代码-->
		
			</body>
</html>
