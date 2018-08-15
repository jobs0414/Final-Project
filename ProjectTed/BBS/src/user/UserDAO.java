package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	//회원 데이터베이스 테이블에 접근할 수 있도록 실질적으로 회원정보 불러오거나 데이터베이스에 회원정보 넣고자 할 때 사용 
	
	private Connection conn; 
	private PreparedStatement pstmt; 
	private ResultSet rs; 
	
	public UserDAO() { 
		//Connection conn=null;
		try { 
			String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
			String ID = "JSPUSER"; //SCOTT?
			String Password="1234"; //
			Class.forName("oracle.jdbc.driver.OracleDriver"); 
			conn=DriverManager.getConnection(URL,ID,Password);
			
			
		} catch(Exception e) { 
			e.printStackTrace();
		}
	}
	public int login(String userID, String userPassword) { //로그인 하는 함수 만들기 
		String SQL="SELECT userPassword FROM USER1 WHERE userID= ?";  //해킹 방어 기법? 
		try { 
			pstmt=conn.prepareStatement(SQL);   //오류 !!!
			pstmt.setString(1,userID); 
			rs=pstmt.executeQuery();
			if(rs.next()) { 
				if(rs.getString(1).equals(userPassword)) 
					return 1; //로그인 성공 
				else 
					return 0; //비밀번호 불일치 
					
					
			}
			return -1; //아이디가 없음 
			
		}catch (Exception e) { 
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류 
	}
	
		public int join(User user) { 
			String SQL= "INSERT INTO USER VALUES(?,?,?,?,?)"; 
		try { 
			pstmt=conn.prepareStatement(SQL); 
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); 
			
			
			
		} catch(Exception e) { 
			e.printStackTrace();
			
		}
		return -1; //데이터베이스 오류 
		
		
		
		
			
		}
		
	}
	
	
	

