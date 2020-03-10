<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import = "org.util.*" %>
<%@page import = "java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'allCancel.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



  </head>
  
  <body>
   		<%
   				request.setCharacterEncoding("utf-8");
   				Connection conn = DBHelper.getConn();
   				Object userName = session.getAttribute("userName");
   				String sql = "delete from ordering where userName = ?";
   				
   				int num = DBHelper.executeUpdate(conn, sql, userName);
   				if( num > 0)
   				{
   					out.println("<script>location.href = 'home.jsp';</script>");
   				}else
   				{
   					out.println("<script>alert('对不起，您当前没有订单信息!');location.href =  'home.jsp';</script>");
   				}
   		%>
  </body>
</html>
