package com.blz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionNew {
	public static void main(String[] args) throws ClassNotFoundException {
		// TODO Auto-generated method stub
		Connection con = null;

	    String url = "jdbc:mysql://localhost:3306/blz";
	    String username = "root";
	    String password = "17102054";

	    try {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      con = DriverManager.getConnection(url, username, password);

	      System.out.println("Connected!");

	    } catch (SQLException ex) {
	        throw new Error("Error ", ex);
	    } finally {
	      try {
	        if (con != null) {
	            con.close();
	        }
	      } catch (SQLException ex) {
	          System.out.println(ex.getMessage());
	      }
	    }
	}
}
