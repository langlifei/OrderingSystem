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
    
    <title>My JSP 'regist.jsp' starting page</title>
    
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
	   		if(request.getParameter("password").equals(request.getParameter("repassword")))
			{
				userDao userDao = new userDao();
				user user = userDao.regist(request, response);
				if(user != null)
				{
					out.println("<script>alert('注册成功!') ; location.href = 'denglu.jsp';</script>");
				}else
					out.println("<script>alert('注册失败,请再次注册!') ; location.href = 'zhuce.jsp'</script>");
			}
   		%>
  </body>
</html>
