package model;

public class Experience {
	private String city;
	private String hospital;
	private String feedback;
	public Experience() {
		super();
	}
	public Experience(String city, String hospital, String feedback) {
		super();
		this.city = city;
		this.hospital = hospital;
		this.feedback = feedback;
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
}