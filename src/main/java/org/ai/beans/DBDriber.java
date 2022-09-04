package org.ai.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBDriber {

	public static void main(String[] args) {

		String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=fales";
		String dbid = "scott";
		String dbpw = "tiger";
		Connection conn = null;
		String sql = "select * from Members where userId ='aaa'";
		System.out.println(sql);
		

		/*
		 * PreparedStatement pstmt = null; ResultSet rs = null; try {
		 * Class.forName("com.mysql.cj.jdbc.Driver"); conn =
		 * DriverManager.getConnection(url, dbid, dbpw); // out.print("연결완료"); } catch
		 * (ClassNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (SQLException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); } finally { try { conn.close(); } catch
		 * (SQLException e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 * }
		 */
	}

}
