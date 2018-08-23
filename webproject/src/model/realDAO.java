package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modelDTO.RealDTO;
import util.DBUtil;

public class realDAO {

	public static ArrayList<RealDTO> getAll() throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<RealDTO> all = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from realtime");
			rset = pstmt.executeQuery();
			
			all = new ArrayList<>();
			while(rset.next()) {
				all.add(new RealDTO(rset.getString(1), rset.getInt(2)));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		
		return all;
	}
	public static void upCounting(String topic) throws SQLException {
		Connection con = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		try {
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			rset = stmt.executeQuery("select real_no from realtime where topic='" + topic + "'");
			if(rset.next()) {  //존재할 경우 true
				stmt.executeUpdate("update realtime set real_no=real_no+1 where topic='"+topic +"'");
			}else {   //미존재할 경우 insert
				stmt.executeQuery("insert into realtime values('" + topic + "', 1)");
			}
		}finally {
			DBUtil.close(con, stmt, rset);
		}
	}
}
