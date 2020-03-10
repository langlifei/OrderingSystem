<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import = "org.dao.*" %>
<%@page import = "org.model.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
    <%
    request.setCharacterEncoding("utf-8");//设置请求编码
	userDao userDao = new userDao();
	user user = userDao.loginCheck(request.getParameter("username"),request.getParameter("password"));
	if( user != null)
	{
		session.setAttribute("userName", user.getUserName());
		out.println("<script>alert('登录成功!'); location.href = 'home.jsp';</script>");
	}else
		out.println("<script>alert('登录失败!'); location.href = 'denglu.jsp';</script>");
    %>
  </body>
</html>
