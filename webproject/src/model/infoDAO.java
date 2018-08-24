package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modelDTO.infoDTO;
import util.DBUtil;

public class infoDAO {
	public static ArrayList<infoDTO> showInfo(String topic) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<infoDTO> info = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select speaker_name, speaker_occupation, photo, title, views, url, web_site from TED,SPEAKER where TED.ted_no = SPEAKER.ted_no and TED.topic = ?");
			pstmt.setString(1, topic);
			rset = pstmt.executeQuery();
			info = new ArrayList<infoDTO>();
			while(rset.next()) {
				info.add(new infoDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getLong(5), rset.getString(6), rset.getString(7)));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return info;
	}
}
