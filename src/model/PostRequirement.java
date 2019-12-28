package model;

public class PostRequirement {
	private String state;
	private String city;
	private int pinCode;
	private String bloodGroup;
	private int userId;
	public PostRequirement() {
		super();
	}
	public PostRequirement(String state, String city, int pinCode, String bloodGroup, int userId) {
		super();
		this.state = state;
		this.city = city;
		this.pinCode = pinCode;
		this.bloodGroup = bloodGroup;
		this.userId = userId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}