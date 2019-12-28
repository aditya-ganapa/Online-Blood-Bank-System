package model;

public class ExperienceHome {
	private String city;
	private String hospital;
	private String feedback;
	private String firstName;
	private String lastName;
	public ExperienceHome() {
		super();
	}
	public ExperienceHome(String city, String hospital, String feedback, String firstName, String lastName) {
		super();
		this.city = city;
		this.hospital = hospital;
		this.feedback = feedback;
		this.firstName = firstName;
		this.lastName = lastName;
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}