package dto;

public class User {
	private int userId;
	private String userName;
	private String userEmail;
	private long userContact;
	private String userPassword;
	public User(int userId, String userName, String userEmail, long userContact, String userPassword,
			byte[] userImage) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userContact = userContact;
		this.userPassword = userPassword;
		this.userImage = userImage;
	}
	private byte[] userImage;
	public int getUserId() {
		return userId;
	}
	public String getUserName() {
		return userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public long getUserContact() {
		return userContact;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public byte[] getUserImage() {
		return userImage;
	}

}
