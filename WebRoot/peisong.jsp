<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>配送说明</title>
    
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
						<a href="home.html" target="_blank">首页</a>
						<a href="canche.html" target="_blank">我的餐车</a>
						<a href="dingdan.html" target="_blank">我的订单</a>
						<a href="zhuce.html" target="_blank">用户中心</a>
						<a href="peisong.html" target="_blank">配送说明</a>
						<a href="about.html" target="_blank">关于我们</a>
						<a href="denglu.html" target="_blank">注销退出</a>
					</div>
					<p><hr width="896" color="darkorange" size="5"/></p>
		</div>
		        <div class="class">
				<br>
				<h4 align="center">配送指南</h4>
				<br>
				<p>午餐时间：<font color="coral">11:00~14:00</font></p>
				<br><p>晚餐时间：<font color="coral">7:00~21:00</font></p>
				<br><p>联系电话：<font color="coral">4008888</font></p>
				<br><p>联系人：<font color="coral">李经理</font></p>
				<br><p>注：<font color="coral">本店不支持网上付款，费用将有送餐员代收，请自备零钱，谢谢合作！</font></p>
				<br><p>&nbsp;订单经过本店客服人员确认后，将安排快递人员送餐。 由于中午订餐人员比较多，请在本店正常营业时间外订餐，到时才能准时送达！ 周末
				进店人员比较多，暂不支持订餐，望见谅！</p>	
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
