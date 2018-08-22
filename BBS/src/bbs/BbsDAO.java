package bbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DBUtil;


public class BbsDAO {
	private static BbsDAO instance = new BbsDAO();
	private Connection conn;
	//Singleton Design Pattern - ���������� ��ü���� �ϳ��� �����ϴ� ���
	private BbsDAO() {}
	public static BbsDAO getInstance() {
		return instance;
	}
	
	
	public String getDate() throws SQLException{ 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String SQL= "SELECT * FROM NOW()";
		
		try { 
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rset = pstmt.executeQuery(); //������ ���� ��� ������ 
			
			if(rset.next()) { 
				return rset.getString(1); 
			}
		
		}finally {
			DBUtil.close(conn, pstmt, rset);
			
		}
		return null; //�����ͺ��̽� ���� 
		
	}
	

/*	public int getNext() throws SQLException{ 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String SQL= "SELECT bbsID FROM BBS ORDER BY bbsID DESC"; 
		try { 
			pstmt = conn.prepareStatement(SQL);
			rset = pstmt.executeQuery(); //������ ���� ��� ������ 
			
			if(rset.next()) { 
				return rset.getInt(1) +1; 
			}
			return 1; //ù ���� �Խù��� ��� 
			
		}finally {
			DBUtil.close(conn, pstmt, rset);
			
		}
		return -1; //�����ͺ��̽� ���� 
	}
	*/
	
	public int write(Bbs dto) throws SQLException{
		conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = -1;
		
		try {
			pstmt = conn.prepareStatement("INSERT INTO BBS VALUES(bbs_id_seq.nextval,?,?,sysdate,?)");
			pstmt.setString(1, dto.getBbsTitle());
			pstmt.setString(2, dto.getUserID());
			pstmt.setString(3, dto.getBbsContent());
			
			if(result != 0) {
				result = 1;
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return result;
	}
/*
	public ArrayList<Bbs> getList(int pageNumber) throws SQLException{  {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String SQL= "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10"; 
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try { 
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1)*10); //�Խñ� 10�� ���鋚 ��µǵ��� �ϴ� �Լ�? 
			rset=pstmt.executeQuery(); //������ ���� ��� ������ 
			while(rs.next()) { 
				Bbs bbs = new Bbs(); 
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				list.add(bbs);

			}
			return list; //�Խñ� ����Ʈ 
	}
	
	public boolean nextPage(int pageNumber) { 
		   String SQL= "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10"; 
				try { 
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber -1)*10); //�Խñ� 10�� ���鋚 ��µǵ��� �ϴ� �Լ�? 
					rs=pstmt.executeQuery(); //������ ���� ��� ������ 
					if(rs.next()) { 
						return true;
						
					
					}
					
				}catch (Exception e) { 
					e.printStackTrace();
				}
				return false; //�Խñ� ����Ʈ 
	}
			
		*/
		
}
	
	
