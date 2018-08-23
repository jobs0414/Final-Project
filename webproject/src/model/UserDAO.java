package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelDTO.UserDTO;
import util.DBUtil;



public class UserDAO {

	Connection conn = null;
	PreparedStatement pstmt =null; 
	ResultSet rset = null; 

	private static UserDAO instance = new UserDAO();
	



	public UserDAO() {
	}

	public static UserDAO getInstance() {
		return instance;
	}

	public int loginCheck(UserDTO userDTO) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("select userpassword from USER1 where userid= ?"); // ���� !!!			
			pstmt.setString(1, userDTO.getUserID());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				if (rs.getString(1).equals(userDTO.getUserPassword())) {
					return 1; // �α��� ����
				} else {
					return 0; // ��й�ȣ ����ġ
				} 
			} else {
			return -1; // ���̵� ����
			}
		} catch(Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			DBUtil.close(conn, pstmt, rs);
		}
	}
	

	public void join(UserDTO userDTO) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBUtil.getConnection();   //��..?
			pstmt =conn.prepareStatement("insert into USER1 values(?,?,?,?,?)");   
			pstmt.setString(1, userDTO.getUserID());
			pstmt.setString(2, userDTO.getUserPassword());
			pstmt.setString(3, userDTO.getUserName());
			pstmt.setString(4, userDTO.getUserGender());
			pstmt.setString(5, userDTO.getUserEmail());
			
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(conn, pstmt, rs);
		}

	}

}
