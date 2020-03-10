package org.db;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 * 该类是一个工具类，该类的作用是帮助我们连接数据库
 * @author Administrator
 *
 */
public class DBConn {
	//创建连接对象
	public static Connection conn ;
	//获取数据库连接
	public static Connection getConn()
	{
		try
		{
			//加载并注册SQLSERVER的驱动
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//编写连接字符串，创建并获取连接
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;database = OnlineOrdering","sa","123456");
			return conn;
		}catch(Exception e)
		{
			//打印异常出错路径
			e.printStackTrace();
		}
		return null;
	}
	
	//关闭数据库连接
	public static void closeConn(){
		try{			
			conn.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
