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
	



	private UserDAO() {
	}

	public static UserDAO getInstance() {
		return instance;
	}

	public int login(String userID, String userPassword) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT USERPASSWORD FROM user1 WHERE userID= ? and USERPASSWORD=?"); // 오류 !!!
			
			// SELECT USERPASSWORD FROM user1 WHERE userID= '2' and USERPASSWORD='2';
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
			//	if (rs.getString(1).equals(userPassword)) {
				return 1; // 로그인 성공
			} else {
				return -1; // 비밀번호 불일치
		//	}
			}
			//return -1; // 아이디가 없음

		} finally {
			DBUtil.close(conn, pstmt, rs);

		}
	}

	public int join(UserDTO user) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		String SQL= "INSERT INTO USER1 VALUES(?,?,?,?,?)";
		
		try {
			conn = DBUtil.getConnection();   //왜..?
			pstmt =conn.prepareStatement(SQL);
			//pstmt = conn.prepareStatement("INSERT INTO USER1 VALUES(?,?,?,?,?))";    
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			
			result = pstmt.executeUpdate();
			if(result != 0) {
				result = 1;
			}
		} finally {
			DBUtil.close(conn, pstmt, rs);
		}
		return result;

	}

}
