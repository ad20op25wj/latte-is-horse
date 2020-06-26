package dao;

import java.util.ArrayList;
import java.sql.*;

import dto.Comment;

public class CommentDao {
	
	private Connection conn;
	private ResultSet rs;
	
	public CommentDao() {
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

	public ArrayList<Comment> getList(int store_id) {
		String SQL = "select * from comment_t where store_id = ?";
		ArrayList<Comment> list = new ArrayList<Comment>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, store_id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Comment comment = new Comment();
				comment.setId(rs.getInt("id"));
				comment.setStore_id(rs.getInt("store_id"));
				comment.setRating(rs.getFloat("rating"));
				comment.setContent(rs.getString("content"));
				list.add(comment);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		return list;
	}
	
	public int write(int store_id, float rating, String content) { 

		String SQL = "insert comment_t (store_id, rating, content) value (?, ?, ?)";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, store_id);
			pstmt.setFloat(2, rating);
			pstmt.setString(3, content);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}
}