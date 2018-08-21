package user;

public class User {
	
	private String userID; 
	private String userPassword; 
	private String userName; 
	private String userGender; 
	private String userEmail;
//야아아 생성자 생성 꼭 해야대	
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
//한명의 회원 데이터를 다룰 수 있는 데이터베이스 및 자바빈즈가 완성됨. 이런식으로 하나의 데이터를 다루고 처리 할 수있는 기법 자바빈즈라 함
}
