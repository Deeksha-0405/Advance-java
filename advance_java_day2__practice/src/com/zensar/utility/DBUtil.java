package com.zensar.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	
	public static Connection getMySqlDBConnection()
	{
		String driverClassName="com.mysql.jdbc.Driver";
		String Url="jdbc:mysql://localhost:3306/java_training";
		String dbUserName="root";
		String dbPassword="root";
		Connection con=null;
		try {
			Class.forName(driverClassName);
			con=DriverManager.getConnection(Url, dbUserName,dbPassword);
		} catch (Exception e) {
			System.out.println("Exception Occured : "+e);
		}
		return con;
	}

}
