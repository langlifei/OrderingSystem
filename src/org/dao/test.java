package org.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.util.*;

public class test {


	public static void main(String[] args)
	{
		try {
				Connection conn1 = DBHelper.getConn();
				String sql = "select * from v_shopping";
				ResultSet rs = DBHelper.executeQuery(conn1,sql);
				while(rs.next())
				{
					System.out.print(rs.getString(1));
					System.out.print(rs.getInt(5));
					System.out.println();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
