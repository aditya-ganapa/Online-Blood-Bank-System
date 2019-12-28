package model;

public class RequirementHome {
	private String state;
	private String city;
	private String bloodGroup;
	private String firstName;
	private long contactNumber;
	public RequirementHome() {
		super();
	}
	public RequirementHome(String state, String city, String bloodGroup, String firstName, long contactNumber) {
		super();
		this.state = state;
		this.city = city;
		this.bloodGroup = bloodGroup;
		this.firstName = firstName;
		this.contactNumber = contactNumber;
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
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
}