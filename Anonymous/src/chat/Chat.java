package chat;

import java.sql.Date;

public class Chat {
    String chatID;
    String chatName;
    String chatContent;
    Date chatTime;
    public String getChatName() {
        return chatName;
    }
    public void setChatName(String chatName) {
        this.chatName = chatName;
    }
    public String getChatContent() {
        return chatContent;
    }
    public void setChatContent(String chatContent) {
        this.chatContent = chatContent;
    }
    
    public Date getChatTime() {
		return chatTime;
	}
	public void setChatTime(Date chatTime) {
		this.chatTime = chatTime;
	}
	public String getChatID() {
        return chatID;
    }
    public void setChatID(String chatID) {
        this.chatID = chatID;
    }
}


