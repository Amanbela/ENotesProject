package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;
	public static Connection getConn()
	{
		if(conn==null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2","root","1234567");
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		return conn;
	}

}
