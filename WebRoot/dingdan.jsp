<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@page import = "org.dao.*" %>
<%@page import = "org.model.*" %>
<%@page import = "org.db.*" %>
<%@page import = "java.sql.*" %>
<%@page import = "org.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订单</title>
    
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
		<!--查询代码-->
		    <div class="search">
		    	<table align="center" border="1px" bordercolor="gainsboro" cellspacing="0px">
		    		<tr>
		    			<th align="center">
		    				<form>
		    					按菜单名称查询<input type="text" /><input type="submit" value="查询"/>
		    				</form>
		    			</th>
		    		</tr>
		    		<tr>
		    			<th align="center">
		    				<form>
		    					按销售日期查询<input type="text" /><input type="submit" value="查询"/>
		    				</form>
		    			</th>
		    		</tr>
		    		<tr>
		    			<td align="center">
		    				<a href="dingdan1.jsp" target="_blank">我的所有订单</a>
		    				<a href="dingdan2.jsp" target="_blank">未派送订单</a>
		    				<a href="dingdan3.jsp" target="_blank">已派送订单</a>
		    			</td>
		    		</tr>
		    	</table>
		    </div>
		    <!--列表代码-->
		    
		    <div class="list">
		    	<table align="center" border="1px" bordercolor="gainsboro" cellspacing="0px">
		    		<tr>
		    			<th colspan="9" align="center">订单查询结果信息列表</th>
		    		</tr>
		    		<tr>
		    			<th align="center">菜单名称</th>
		    			<th align="center">真实姓名</th>
		    			<th align="center">订购号码</th>
		    			<th align="center">派送地址</th>
		    			<th align="center">订购数量</th>
		    			<th align="center">单价(元)</th>
		    			<th align="center">合计(元)</th>
		    			<th align="center">订购时间</th>
		    			<th align="center">是否派送</th>
		    		</tr>
		    <%
						Object userName = session.getAttribute("userName");
					request.setCharacterEncoding("utf-8");
					Connection conn = DBHelper.getConn();
				    String sql1 = "select * from v_shopping";
					ResultSet set2 = DBHelper.executeQuery(conn,sql1);
					if(set2.next())
					{
						String sql2 = "select * from v_dingdan";
						set2 = DBHelper.executeQuery(conn,sql2);
						String isSend = "";
						while(set2.next())
						{		
			%>
		    		<tr>
		    			<td align="center"><%=set2.getString(1)%></td>
		    			<td align="center"><%=set2.getString(2)%></td>
		    			<td align="center"><%=set2.getString(3)%></td>
		    			<td align="center"><%=set2.getString(4)%></td>
		    			<td align="center"><%=set2.getInt(5)%></td>
		    			<td align="center"><%=set2.getDouble(6)%></td>
		    			<td align="center"><%=set2.getInt(5)*set2.getDouble(6)%></td>
		    			<td align="center"><%=set2.getString(7)%></td>
		    			<td align="center">否</td>
		    		</tr>
		    	<% 
						}
					}
		    	%>
		    	</table>
		    </div>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p align="center"><hr  style="height:4px"  color="#FFCC99"></p>
		    <p align="center"><a href="about.jsp">|关于我们</a><a href="peisong.jsp">|配送说明|</a></p>
            <p align="center">Copyight(c)2015-2020</p>
		</div>
	</body>
</html>
