package org.db;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 * ������һ�������࣬����������ǰ��������������ݿ�
 * @author Administrator
 *
 */
public class DBConn {
	//�������Ӷ���
	public static Connection conn ;
	//��ȡ���ݿ�����
	public static Connection getConn()
	{
		try
		{
			//���ز�ע��SQLSERVER������
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//��д�����ַ�������������ȡ����
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;database = OnlineOrdering","sa","123456");
			return conn;
		}catch(Exception e)
		{
			//��ӡ�쳣����·��
			e.printStackTrace();
		}
		return null;
	}
	
	//�ر����ݿ�����
	public static void closeConn(){
		try{			
			conn.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
