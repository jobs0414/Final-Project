package bbs;

public class Bbs {  //자바 빈즈 클래스 완성. 데이터베이스 테이블 구축과 비슷한 개념.

	private int bbsID;  //시퀀스??? 
	private String bbsTitle; 
	private String userID; 
	private String bbsDate; 
	private String bbsContent; 
	
	public Bbs() {
		super();
	}
	public Bbs(String bbsTitle, int bbsID, String bbsContent) {
		super();
		this.bbsTitle = bbsTitle;
		this.bbsID = bbsID;
		this.bbsContent = bbsContent;
	}

	public Bbs(int bbsID, String bbsTitle, String userID, String bbsDate, String bbsContent, int bbsAvailable) {
		super();
		this.bbsID = bbsID;
		this.bbsTitle = bbsTitle;
		this.userID = userID;
		this.bbsDate = bbsDate;
		this.bbsContent = bbsContent;
	}

	public int getBbsID() {
		return bbsID;

	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Bbs [bbsID=");
		builder.append(bbsID);
		builder.append(", bbsTitle=");
		builder.append(bbsTitle);
		builder.append(", userID=");
		builder.append(userID);
		builder.append(", bbsDate=");
		builder.append(bbsDate);
		builder.append(", bbsContent=");
		builder.append(bbsContent);
		builder.append("]");
		return builder.toString();
	} 
}
