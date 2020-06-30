package dao;

import java.util.ArrayList;
import java.sql.*;

import dto.Inquiry;

public class InquiryDao {
	private Connection conn;
	private ResultSet rs;
	
	public InquiryDao() {
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
	
	public int write(String title, String email, String contents) { 

		String SQL = "insert inquiry (title, email, contents) value (?, ?, ?)";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, title);
			pstmt.setString(2, email);
			pstmt.setString(3, contents);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}

}
