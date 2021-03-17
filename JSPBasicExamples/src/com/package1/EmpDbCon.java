package com.package1;
import java.sql.*;
import java.util.*;

public class EmpDbCon {
	static Connection con = null;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/narsing?characterEncoding=latin1", "root",
					"root");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static List<Emp> getRecords(int start,int total) {
		List<Emp> list = new ArrayList<Emp>();
		String q = "select * from emp limit "+(start-1)+","+total;
		try {
			PreparedStatement statement = con.prepareStatement(q);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				Emp e = new Emp();
				e.setId(set.getInt(1));
				e.setName(set.getString(2));
				e.setSalary(set.getFloat(3));
				list.add(e);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
				
	}
}
