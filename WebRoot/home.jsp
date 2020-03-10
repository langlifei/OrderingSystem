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

    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  	<link rel="stylesheet" href="css/main.css" type="text/css"></link>
	<script language = "javascript">
		function firm()
		{
			if(confirm("客官，您真的要全部取消吗？"))
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
						<div class="top1"><%--
						<%
								if(session.getAttribute("userName")==null)
								{
						%>
								<%
								}
								else
								{
									Object userName = request.getAttribute("userName");
								%>
								<span><%="尊敬的"+(String)userName%></span>
								<a href = "denglu.jsp">注销</a>
								<%
								}
								%>
								--%>
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
				<form>
				<div class="big">		
    <div class="content">
    <%
					Connection conn1 = DBHelper.getConn();
					String sql = "EXEC SP_GLOBALPAGING 'V_home',null,null,'cName',0,1,6";
					ResultSet rs = DBHelper.executeQuery(conn1,sql);
					while(rs.next())
					{
				%>
  	<div class="content_top">
  	<div class="content_img">
  	
  	<img src="./<%=rs.getString(3) %>" />
  	</div>
  	<div class="content_font">
  <p>菜名：<strong><%=rs.getString(2) %></strong></p>
  <p>市场价格：<%=rs.getDouble(4)%></p>
  <p>会员价格：<font color="#FF0000"><%=rs.getDouble(5)%></font></p>
  <p>配料:<%=rs.getString(6)%></p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>菜品类型：<%=rs.getString(7)%></p>
  	</div>
  	
  	<div class="content_button">
  		&nbsp;
  		&nbsp;
  	<a href="home2.jsp?cID=<%=rs.getString(8)%>"><img src="img/img_dinggou.gif"/></a>
  	</div>
  	</div>
  	
		<%
					}
				DBHelper.closeConn(conn1);
		%>
	</form>
		</div>
		  <div class="contentright">
		<div class="right_top">
		<div class="right_top_1"><font color="orange" size="7"><strong>餐厅公告</strong></font>
		<div class=right_top_1_1><a href="gonggao.jsp">更多<img src="img/articleitems.gif"/><img src="img/articleitems.gif"/></a></div>
		</div>
		<br /><br />
		<table width="295px" align="absbottom">
		<tr><td></td></tr>
			<tr><td></td></tr>
			<%
				request.setCharacterEncoding("utf-8");
			    Connection conn = DBConn.getConn();
			    PreparedStatement pstmt = conn.prepareStatement("select title , content , inTime from inform");
			    ResultSet set = pstmt.executeQuery();
			    inform[] array = new inform[2];
			    for(int i = 0  ; i < array.length ; i++)
			    {
			    	if(set.next())
			    	{
			    		inform in = new inform();
				    	in.setTitle(set.getString(1));
				    	in.setContent(set.getString(2));
				    	in.setInTime(set.getString(3));
				    	array[i] = in;
			    	}
			    }
			    DBHelper.closeConn(conn);
			%>
			<tr><td><img src="img/43.gif"/><font size="7"><%=array[1].getTitle()%></font></td><td align="right"><%=array[0].getInTime()%></td></tr>
			<tr><td></td></tr>
			<tr><td><img src="img/43.gif"/><font size="7"><%=array[0].getTitle()%></font></td><td align="right"><%=array[1].getInTime()%></td></tr>
		</table>
		</div>
		
		<div class=" right_mid">
		<div class="right_mid_1"><font color="orange" size="7"><strong>我的餐车</strong></font>
		<div class=right_mid_1_1><a href="canche.jsp">详情<img src="img/articleitems.gif"/><img src="img/articleitems.gif"/></a></div>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		
		<table width="295px" align="absbottom" bgcolor="pink">
		<%
			request.setCharacterEncoding("utf-8");
			Connection conn2 = DBHelper.getConn();
		    String sql1 = "select * from v_shopping";
			ResultSet set2 = DBHelper.executeQuery(conn2,sql1);
			double sum = 0.0;
			int num = 0;
		   while(set2.next())
			   {
		%>
		<tr>
			<td weight="150px">菜单名称 <%=set2.getString(1)%></td>
			<td>单价 <%=set2.getDouble(3)%></td>
			<td>数量 <%=set2.getInt(5)%></td>
		</tr>
		<%
			sum += set2.getDouble(3)*set2.getInt(5);
			num += set2.getInt(5);
		    	}
		   DBHelper.closeConn(conn2);
		%>
		<tr>
			<td>小计：<%= sum%></td>
			<td>元</td>
			<td><%=num%></>份</td>
		</tr>
		</table>
			<p align="center">
			<a href = "canche.jsp"><img src="img/canche_submit.gif"/></a>
		    <img src="img/quxiao2.gif" onclick=firm() />
		   </p>
		</div>
		<div class="right_bottom">
			<div class="right_bottom_1"><font color="orange" size="7"><strong>销量排行榜</strong></font></div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		<table width="295px" align="left">
		<%
			request.setCharacterEncoding("utf-8");
			Connection conn3 = DBHelper.getConn();
		    String sql2 = "select cName,数量 from v_dingdan order by 数量";
			ResultSet set3 = DBHelper.executeQuery(conn3,sql2);
			while(set3.next())
			{
		%>
		<tr>
			<td align="left"><img src="img/43.gif"/></td>
			<td align="left"><strong><%=set3.getString(1)%></strong></td>
			<td align="center">已销售<%=set3.getInt(2)%>次</td>
		</tr>
		<%
			}
			DBHelper.closeConn(conn3);
		%>
		
		</table>
		</div>
		                
		</div>
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
