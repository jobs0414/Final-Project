package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DBUtil;

public class UserDAO {

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
			pstmt = conn.prepareStatement("SELECT USERPASSWORD FROM user1 WHERE userID= ? and USERPASSWORD=?"); // ���� !!!
			
			// SELECT USERPASSWORD FROM user1 WHERE userID= '2' and USERPASSWORD='2';
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
			//	if (rs.getString(1).equals(userPassword)) {
				return 1; // �α��� ����
			} else {
				return -1; // ��й�ȣ ����ġ
		//	}
			}
			//return -1; // ���̵� ����

		} finally {
			DBUtil.close(conn, pstmt, rs);

		}
	}

	public int join(User user) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		
		
		try {
			pstmt = conn.prepareStatement("INSERT INTO USER1 VALUES(?,?,?,?,?)");
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
