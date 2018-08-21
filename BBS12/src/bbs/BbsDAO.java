package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn; 
	private ResultSet rs; 
	
	public BbsDAO() { 
		//Connection conn=null;
		try { 
			String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
			String ID = "JSPUSER"; //SCOTT?
			String Password="1234"; //
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
			conn=DriverManager.getConnection(URL,ID,Password);
			
			
		} catch(Exception e) { 
			e.printStackTrace();   //연결부분 위까지 
		}
	}
	
	public String getDate() { 
		String SQL= "SELECT NOW()"; 
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery(); //실제로 실행 결과 나오게 
			if(rs.next()) { 
				return rs.getString(1); 
				
			}
		
			
		}catch (Exception e) { 
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류 
		
	}
	

	public int getNext() { 
		String SQL= "SELECT bbsID FROM BBS ORDER BY bbsID DESC"; 
		try { 
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery(); //실제로 실행 결과 나오게 
			if(rs.next()) { 
				return rs.getInt(1) +1; 
				
				
			}
			return 1; //첫 번쨰 게시물인 경우 
			
			
		}catch (Exception e) { 
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류 
		
		
	}
	
	public int write(String bbsTitle, String userID, String bbsContent) {
			String SQL= "INSERT INTO BBS VALUES(?,?,?,?,?,?)"; 
			try { 
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext());
				pstmt.setString(2, bbsTitle);
				pstmt.setString(3, userID);
				pstmt.setString(4, getDate());
				pstmt.setString(5, bbsContent);
				pstmt.setInt(6, 1);
				
			    return pstmt.executeUpdate();
				
			}catch (Exception e) { 
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류 
			
		}
	
	public ArrayList<Bbs> getList(int pageNumber) { 

	   String SQL= "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10"; 
	   ArrayList<Bbs> list = new ArrayList<Bbs>();
			try { 
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext() - (pageNumber -1)*10); //게시글 10개 만들떄 출력되도록 하는 함수? 
				rs=pstmt.executeQuery(); //실제로 실행 결과 나오게 
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
				
			}catch (Exception e) { 
				e.printStackTrace();
			}
			return list; //게시글 리스트 
	}

	
	public boolean nextPage(int pageNumber) { 
		   String SQL= "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10"; 
				try { 
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber -1)*10); //게시글 10개 만들떄 출력되도록 하는 함수? 
					rs=pstmt.executeQuery(); //실제로 실행 결과 나오게 
					if(rs.next()) { 
						return true;
						
					
					}
					
				}catch (Exception e) { 
					e.printStackTrace();
				}
				return false; //게시글 리스트 
				
		
		
	}
			
		
		
		
	}
	
	
