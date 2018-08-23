package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import modelDTO.topicDTO;
import util.DBUtil;

public class topicDAO {
	public static ArrayList<topicDTO> topicShow() throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<topicDTO> size = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select topic,count(*) as count from TED group by topic");
			rset = pstmt.executeQuery();
			size = new ArrayList<topicDTO>();
			while(rset.next()) {
				size.add(new topicDTO(rset.getString(1), rset.getInt(2)));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return size;
	}
}
