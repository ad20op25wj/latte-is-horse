package dao;

import java.util.ArrayList;
import java.sql.*;

import dto.Store;

public class StoreDao {
	
	private Connection conn;
	private ResultSet rs;
	
	public StoreDao() {		
		try {
			String dbURL="jdbc:mysql://localhost:3306/owlbam?serverTimezone=UTC";
			String dbID="root";
			String dbPassword="1234";
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
				store.setLatitude(rs.getDouble("latitude"));
				store.setLongitude(rs.getDouble("longitude"));
				store.setName(rs.getString("name"));
				store.setRating(rs.getFloat("rating"));
				list.add(store);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		return list;
	}
}