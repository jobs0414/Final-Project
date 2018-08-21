package user;

public class User {
	
	private String userID; 
	private String userPassword; 
	private String userName; 
	private String userGender; 
	private String userEmail;
//�߾ƾ� ������ ���� �� �ؾߴ�	
	public User() {
		super();
	}
	public User(String userID, String userPassword, String userName, String userGender, String userEmail) {
		super();
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userGender = userGender;
		this.userEmail = userEmail;
	}

	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [userID=");
		builder.append(userID);
		builder.append(", userPassword=");
		builder.append(userPassword);
		builder.append(", userName=");
		builder.append(userName);
		builder.append(", userGender=");
		builder.append(userGender);
		builder.append(", userEmail=");
		builder.append(userEmail);
		builder.append("]");
		return builder.toString();
	}
//�Ѹ��� ȸ�� �����͸� �ٷ� �� �ִ� �����ͺ��̽� �� �ڹٺ�� �ϼ���. �̷������� �ϳ��� �����͸� �ٷ�� ó�� �� ���ִ� ��� �ڹٺ���� ��
}
