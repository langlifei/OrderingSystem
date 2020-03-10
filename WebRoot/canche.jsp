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
    
    <title>我的餐车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  	<script language = "javascript">
		function firm(obj)
		{
			if(confirm("客官，您真的确定提交吗？"))
				{
					location.href = 'canche.jsp';
				}
		}
		function firm1( )
		{
			if(confirm("客官，您真的确定取消吗？"))
				{
					location.href = 'allCancel.jsp';
				}
		}
	</script>
  </head>
  
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
		
			
			
		<!--中间内容代码-->
		    <div class="list">
		    	<table align="center" border="1px" bordercolor="#FF9933" cellspacing="0px">
		    		<tr>
                        <th colspan="5">&nbsp;</th>
                    </tr>
		    		<tr>
		    			<th colspan="5" align="center">我的订餐信息列表</th>
		    		</tr>
		    		<%
			    		request.setCharacterEncoding("utf-8");
		    			Object userName = session.getAttribute("userName");
						Connection conn2 = DBHelper.getConn();
					  	//String sql = "insert into ordering(userName,cName,price,num) values(?,?,?)";
						String sql1 = "select * from v_shopping";
						ResultSet set2 = DBHelper.executeQuery(conn2,sql1);
						int i = -1;
						double sum = 0.0;
						int num = 0;
					   while(set2.next())
						   {
							//i = DBHelper.executeUpdate(conn2, sql, userName,set2.getString(1),set2.getDouble(3),set2.getInt(5));
		    				//if( i > 0)
		    				//{
		    		%>
		    		<tr>
		    			<th colspan="2" align="center">菜单名称:  <%=set2.getString(1)%></th>
		    			<th align="center">单价 : <%=set2.getDouble(3)%></th>
		    			<th align="center">数量 :  <%=set2.getInt(5)%></th>
		    			<th>&nbsp;&nbsp;</th>
		    		</tr>
		    		<%
		    				//}
						sum += set2.getDouble(3)*set2.getInt(5);
						num += set2.getInt(5);
					    	}
					%>
		    		<tr>
		    			<th colspan="5" align="center">
		    					小计： <%=sum%>元       共： <%=num%>份
		    			</th>
		    		</tr>
		    		<tr>
		    			<td colspan="5" align="center">
		    				<a href="#"><img src="img/canche_submit.gif" onclick=firm() /></a><a href="#"><img src="img/quxiao2.gif" onclick= frim1() /></a>
		    			</td>
		    		</tr>
		    	</table>
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
