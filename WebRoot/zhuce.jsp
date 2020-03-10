<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
			
		<!--中间内容代码-->
	<div id = "div1">
		<form action = "regist.jsp" method = "post">
		<table class = "table" cellspacing="0" cellpadding="3" width="700px" bordercolor="red" border="">
        	<tr >
            	<td colspan = "3" align="center">请填写用户信息(带*为必填项)</td>
            </tr>
            <tr>
            	<td>用户名:</td>
                <td><input type = "text" name = "username"/></td>
                <td>*您用来登录的用户名</td>
            </tr>
            <tr>
            	<td>密码:</td>
                <td>
                	<input type = "password" name = "password" maxlength = "15"/>
                </td>
                <td>*长度必须大于5个小于16个字符,只能为英语字,数字</td>
            </tr>
            <tr>
            	<td>确认密码:</td>
                <td>
                	<input type = "password" name = "repassword" maxlength="16"/>
                </td>
                <td>*请将输入的密码再次输入</td>
            </tr>
            <tr>
            	<td>真实姓名:</td>
                <td><input type = "text" name = "realName"/></td>
                <td>*请输入您的真实的姓名</td>
            </tr>
            <tr>
            	<td>性别:</td>
                <td>
                	男:<input type = "radio" name = "sex" value="1" checked = "checked"/>
                    女:<input type = "radio" name = "sex" value = "0"/>
                </td>
                <td>
                	*请填写您的真实信息
                </td>
            </tr>
            <tr>
            	<td>
                	生日:
                </td>
                <td>
                	<input type = "text" name = "birthday" value = " 年/月/日"/>
                </td>
                <td>
                	*请输入您的真实年龄
                </td>
            </tr>
            <tr>
            	<td>身份证号:</td>
                <td>
                	<input type = "text" name = "IDcard" />
                </td>
                <td>*请填写您的真实信息</td>
            </tr>
            <tr>
            	<td>家庭住址:</td>
                <td>
                	<input type = "text" name = "address"/>
                </td>
                <td>
                	*请填写您的真实信息
                </td>
            </tr>
            <tr>
            	<td>电话号码:</td>
                <td>
                	<input type = "text" name = "phoneNumber" maxlength="11"/>
                </td>
                <td>
                	*请填写您的真实信息(格式为02487654321或13987654321)
                </td>
            </tr>
            <tr>
            	<td>电子邮箱:</td>
                <td>
                	<input type = "text" name = "email"/>
                </td>
                <td>*请输入您有效的邮件地址,以便于我们为您提供有效的服务</td>
            </tr>
            <tr>
            	<td>邮政编码:</td>
                <td>
                	<input type = "text" name = "encode"/>
                </td>
                <td>
                	*请输入您的真实信息(格式为000000)
                </td>
            </tr>
            <tr>
            	<td colspan="3" align="center"> <input type = "submit" name = "submit" value = "提交"/>
                	&nbsp;<input type = "reset" name = "reset" value = "重置"></td>
            <tr>
        </table>
        </form>
        </div>
        <div class="content3">
 	<p align="center"><hr  style="height:4px"  color="#FFCC99"></p>
		    	<p align="center">关于我们|配送说明|</p>
                <p align="center">Copyight(c)2015-2020</p>
			</div>
	</body>
</html>
