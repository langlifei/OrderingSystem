<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>关于我们</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" href="css/main.css" type="text/css"></link></head>
  <body>
		<!--主体结构代码-->
		<div class="main">	
		<!--第一行导航条代码-->
			<div class="top">
				<!--会员菜单-->
				<div class="top1">
						<a href="denglu.jsp" target="_blank" >会员登录</a> |
			            <a href= "zhuce.jsp" target="_blank">会员注册</a> |
						<a href="denglu.jsp" target="_blank">注销登录</a> |
						<a href="peisong.jsp" target="_blank">配送说明</a> |
						<a href="about.jsp" target="_blank">关于我们</a>
				</div>
				<!--用户选择导航-->
					<!--logo区域-->
					<div class="logo">
					</div>
					<div class="mid1">&nbsp;</div>
					<div class="mid2">
						<a href="home.jsp" target="_blank">首页</a>
						<a href="canche.jsp" target="_blank">我的餐车</a>
						<a href="dingdan.jsp" target="_blank">我的订单</a>
						<a href="zhuce.jsp" target="_blank">用户中心</a>
						<a href="peisong.jsp" target="_blank">配送说明</a>
						<a href="about.jsp" target="_blank">关于我们</a>
						<a href="denglu.jsp" target="_blank">注销退出</a>
					</div>
					<p><hr width="896" color="darkorange" size="5"/></p>
		</div>
		<div class="class">
				<br>
				<h2 align="center">关于我们</h2>
				<br>
				<p>&nbsp;&nbsp;小时候的味道“即便五年十年都没机会吃，也总是会挂念着，一吃就能想起过往时的味道来。这种味觉记忆，缠绕着思乡的”点滴情怀，成为人们最原始的“乡愁”。你也有“小时候的味道”吗？
				</p>
				<p>&nbsp;&nbsp;欢迎来到阿婆私房菜，让你重温童年妈妈的味道！</p>
				<br><p align="center"><a href="home.jsp">返回</a></p>
		</div>
			<p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p align="center"><hr  style="height:4px"  color="#FFCC99"></p>
		    <p align="center"><a href="about.jsp">|关于我们</a><a href="peisong.jsp">|配送说明|</a></p>
            <p align="center">Copyight(c)2015-2020</p>
	</body>
</html>
