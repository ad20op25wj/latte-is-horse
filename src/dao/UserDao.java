package dao;

import java.sql.*;

import dto.User;

public class UserDao {
	
	private Connection conn;
	private ResultSet rs;
	
	public UserDao() {
		try {
			String dbURL="jdbc:mysql://webprodb.cnvfwzcge5ku.ap-northeast-2.rds.amazonaws.com/owlbam";
			String dbID="webpro1";
			String dbPassword="webpro1357!";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int isValid(String ID, String password) {
		String SQL = "select * from user where ID = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			if(rs.next() == false)
				return 0;
			do {
				User user = new User();
				user.setPassword(rs.getString("password"));
				if(user.getPassword().equals(password))
					return 2;	
			}while (rs.next());
			return 1;
		} catch (Exception e) {
			e.printStackTrace();  
		}
		return -1;
	}
	
	public int write(String ID, String password, String u_name) { 

		String SQL = "insert user (ID, password, u_name) value (?, ?, ?)";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, ID);
			pstmt.setString(2, password);
			pstmt.setString(3, u_name);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}
}