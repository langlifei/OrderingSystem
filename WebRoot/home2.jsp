<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'home2.jsp' starting page</title>
    
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
			Object userName = session.getAttribute("userName");
			if(userName != null)
			{
				request.setCharacterEncoding("utf-8");
				String str = request.getParameter("cID");	//获取菜品cID
				int cID = Integer.parseInt(str);			//将字符窜转换为整型
				Connection conn1 = DBHelper.getConn();
				String sql = "insert into ordering(cID,userName,orderingTime) values(?,?,getdate())";
				int num = DBHelper.executeUpdate(conn1,sql,cID,userName);
				out.println(num);
				if(num > 0)
				{
					out.print("<script>location.href = 'home.jsp';</script>");
				}else
				{
					out.print("<script>alert('添加失败!');</script>");
				}
				DBHelper.closeConn(conn1);
			}else{
				out.print("<script>alert('对不起，请登录后加入购物车!');location.href = 'denglu.jsp';</script>");
			}
		%>
  </body>
</html>
