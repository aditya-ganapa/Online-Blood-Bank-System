package model;

public class Experience {
	private String city;
	private String hospital;
	private String feedback;
	private int userId;
	public Experience() {
		super();
	}
	public Experience(String city, String hospital, String feedback, int userId) {
		super();
		this.city = city;
		this.hospital = hospital;
		this.feedback = feedback;
		this.userId = userId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}