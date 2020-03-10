package org.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.db.DBConn;
import org.model.user;

public class userDao {
	Connection conn;
	/*
	 * 注册会员
	 */
	public user regist(HttpServletRequest request,HttpServletResponse response)
	{
		//System.out.println("----------------------------------");
		user user = new user();
		conn = DBConn.getConn();
		//System.out.println(conn);
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement("insert into users(userName,password,realName,sex,birthday,IDcard,address,phoneNum,email,encode,isVIP)values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,request.getParameter("username"));
			pstmt.setString(2,request.getParameter("password"));
			pstmt.setString(3,request.getParameter("realName"));
			int n = Integer.parseInt(request.getParameter("sex"));	//将字符串转换为整型
			pstmt.setInt(4, n);
			pstmt.setString(5,request.getParameter("birthday"));
			pstmt.setString(6, request.getParameter("IDcard"));
			pstmt.setString(7, request.getParameter("address"));
			pstmt.setString(8, request.getParameter("phoneNumber"));
			pstmt.setString(9, request.getParameter("email"));
			pstmt.setString(10, request.getParameter("encode"));
			pstmt.setInt(11,1);
//			String userName = request.getParameter("username");
//			String password= request.getParameter("password");
//			String realName = request.getParameter("realName");
//			String sex = request.getParameter("sex");
//			String birthday = request.getParameter("birthday");
//			String IDcard = request.getParameter("IDcard");
//			String address = request.getParameter("address");
//			String phoneNumber = request.getParameter("phoneNumber");
//			String email = request.getParameter("email");
//			String encode = request.getParameter("encode");
//			System.out.println("username = "+userName+"\n password =  "+password+"\n password =  "+realName+
//					"\n password =  "+sex+"\n password =  "+ birthday +"\n password =  "+IDcard+"\n password =  "+address+
//					"\n password =  "+phoneNumber+"\n password =  "+email+"\n password =  "+encode);
			boolean f = pstmt.execute();
			//System.out.println(f);
			//是否执行成功
			if(!f){
				user.setUserName(request.getParameter("username"));
				return user;
			}				
		} catch (Exception e) {
			// TODO Auto-generated catch blocks
			e.printStackTrace();
		}finally
		{
			DBConn.closeConn();
		}
		return null;
	}

	/*
	 * 验证登录
	 */
	public user loginCheck(String username , String password)
	{
		
		try {
			conn = DBConn.getConn();
			PreparedStatement pstmt = conn.prepareStatement("select username , password from users where username = ? and password = ?");
			pstmt.setString(1,username);
			pstmt.setString(2, password);
			ResultSet result = pstmt.executeQuery();		
			if(result.next())		//是否查询到数据，有赋值，没有返回空
			{
				user user = new user();
				user.setUserName(result.getString(1));
				user.setPassword(result.getString(2));
				return user;
			}else
				return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}finally{
			DBConn.closeConn();
		}
		
	}
	
	
	public boolean updatePassword(String username ,String password)
	{
		boolean f = false;
		return f;
	}
	
}
