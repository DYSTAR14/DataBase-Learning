package com.blz;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class DBConnection {

	public static void main(String[] args) throws ClassNotFoundException {
		Connection con = null;
		try {
			// 1. load driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. Connection
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blz", "root", "17102054");
			// 3. create statement/query
			Statement stmt = con.createStatement();
			// 4. execute statement
			String query = "SELECT * FROM student";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next())
				System.out.println("| " + rs.getInt(1) + " | " + rs.getString(2));

			// 5. close connection
			con.close();
		}
		catch (SQLException e){
			e.printStackTrace();
		}
	}
}

/* 		try {
			// 1. load driver class
			Class.forName("com.mysql.jdbc.Driver");
			// 2. Connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blz", "root", "root");
			// 3. create statement/query
			Statement stmt = con.createStatement();
			int count = 0;
			// 4. execute statement
			// Insert record
			String insertQuery = "insert into student values(3,'PP','KK')";
			count = stmt.executeUpdate(insertQuery);
			System.out.println(count + " record inserted");
			if (count > 0) {
				System.out.println("record Added");
			}

			// Delete record
			String deleteQuery = "delete from student where roll_number=3";
			count = stmt.executeUpdate(deleteQuery);
			System.out.println(count + " record deleted");
			if (count > 0) {
				System.out.println("record deleted");
			}
			// Select all record in result set
			String query = "SELECT * FROM student";
			ResultSet rs = stmt.executeQuery(query);
			System.out.println("Select Query Executed: ");
			while (rs.next())
				System.out.println("| " + rs.getString(3) + " | " + rs.getString(2) + " | " + rs.getInt(1) + " |");

			// 5. close connection
			con.close();
		} 
*/