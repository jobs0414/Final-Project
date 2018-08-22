package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import util.DBUtil;
import model.wordDTO;

public class wordDAO {
	public static ArrayList<wordDTO> getCounting(String topic) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<wordDTO> all = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select text, counting from wordcount where topic=? and rownum<=20 order by counting desc");
			pstmt.setString(1, topic);
			rset = pstmt.executeQuery();
			all = new ArrayList<wordDTO>();
			
			while (rset.next()) {
				all.add(new wordDTO(rset.getString(1), rset.getInt(2)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return all;
	}
}
