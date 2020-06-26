package dao;

import java.util.ArrayList;
import java.sql.*;

import dto.Store;

public class StoreDao {
	
	private Connection conn;
	private ResultSet rs;
	
	public StoreDao() {
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

	public ArrayList<Store> getList(int category) {
		String SQL = "select * from store where category = ?";
		ArrayList<Store> list = new ArrayList<Store>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, category);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Store store = new Store();
				store.setId(rs.getInt("id"));
				store.setLatitude(rs.getDouble("latitude"));
				store.setLongitude(rs.getDouble("longitude"));
				store.setName(rs.getString("name"));
				store.setRating(rs.getFloat("rating"));
				store.setAddress(rs.getString("address"));
				list.add(store);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		return list;
	}
	
	public Store getStoreById(int id) {
		String SQL = "select * from store where id = ?";
		Store store = new Store();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				store.setId(rs.getInt("id"));
				store.setLatitude(rs.getDouble("latitude"));
				store.setLongitude(rs.getDouble("longitude"));
				store.setName(rs.getString("name"));
				store.setRating(rs.getFloat("rating"));
				store.setAddress(rs.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		return store;
	}
}