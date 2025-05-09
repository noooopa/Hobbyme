package mvc.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import mvc.database.HobbyDBConnection;


public class HobbyDAO {

	private static HobbyDAO instance;

	private HobbyDAO() {

	}

	public static HobbyDAO getInstance() {
		if (instance == null)
			instance = new HobbyDAO();
		return instance;
	}

	public boolean validateUser(String id, String password) {
		boolean isValid = false;
		String sql = "SELECT * FROM user WHERE user_id=? AND password=?";
		try (Connection conn = HobbyDBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, id);
			pstmt.setString(2, password);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					isValid = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isValid;
	}

	public HobbyDTO getUserById(String userId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HobbyDTO user = null;

		String sql = "SELECT * FROM user WHERE user_id = ? AND deleted = 'N'";

		try {
			conn = HobbyDBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				user = new HobbyDTO();
				user.setUserId(rs.getString("user_id"));
				user.setPassword(rs.getString("password"));
				user.setName(rs.getString("name"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setGender(rs.getString("gender"));
				user.setBirthdate(rs.getDate("birthdate"));
				user.setClasses(rs.getString("classes"));
				user.setDeleted(rs.getString("deleted"));
			}
		} catch (Exception e) {
			System.out.println("getUserById() : " + e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return user;
	}

	public void insertUser(HobbyDTO user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = HobbyDBConnection.getConnection();

			String sql = "insert into user(user_id,password,name,phone,address,gender,birthdate,classes,deleted)"
					+ "values(?, ?, ?, ?, ?, ?, ?, ?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getAddress());
			pstmt.setString(6, user.getGender());
			pstmt.setDate(7, user.getBirthdate());
			pstmt.setString(8, user.getClasses());
			pstmt.setString(9, "N");

			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("insertUser()      : " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
	}
	public void updateUser(HobbyDTO dto) {
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    String sql = "UPDATE user SET name = ?, phone = ?, address = ?, gender = ?, birthdate = ? WHERE user_id = ?";

	    try {
	        conn = HobbyDBConnection.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, dto.getName());
	        pstmt.setString(2, dto.getPhone());
	        pstmt.setString(3, dto.getAddress());
	        pstmt.setString(4, dto.getGender());
	        pstmt.setDate(5, dto.getBirthdate());
	        pstmt.setString(6, dto.getUserId());

	        pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
}
