package chat;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ChatDAO {
	
	private Connection conn;
	
	public ChatDAO() { 
		try { 
			String dbURL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbID = "jspUser"; 
			String dbPassword="1234";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn= DriverManager.getConnection(dbURL,dbID,dbPassword);
			
			System.out.println("데이터베이스 연결성공");
		
		} catch(Exception e) { 
			e.printStackTrace();
		
	}
}

	public ArrayList<Chat> getChatListByRecent(String chatID) {
        ArrayList<Chat> chatList = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String SQL = "select * from chat where chatID > ? order by chatTime";//
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, Integer.parseInt(chatID));
            rs = pstmt.executeQuery();
            chatList = new ArrayList<Chat>();
            while (rs.next()) {
                Chat chat = new Chat();
                chat.setChatID(rs.getString("chatID"));
                chat.setChatName(rs.getString("chatName"));
                chat.setChatContent(rs.getString("chatContent").replaceAll(" ", " ").replaceAll("<", "<")
                        .replaceAll(">", ">").replaceAll("\n", "<br>"));
                chat.setChatTime(rs.getDate("chatTime"));
                chatList.add(chat);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return chatList;
    }
 
    public int submit(String chatName, String chatContent) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String SQL = "insert into chat values (NULL,?,?,sysdate())";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, chatName);
            pstmt.setString(2, chatContent);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1;
    }
 
    public int eraseDB() {
        PreparedStatement pstmt = null;
        String SQL = "delete from chat";
        try {
            pstmt = conn.prepareStatement(SQL);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return -1;
    }
}


