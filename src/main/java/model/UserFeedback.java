package model;

public class UserFeedback {
	private String name;
	private String mail;
	private String comment;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public UserFeedback(String name, String mail, String comment) {
		super();
		this.name = name;
		this.mail = mail;
		this.comment = comment;
	}
}
