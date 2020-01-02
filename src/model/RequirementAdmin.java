package model;

public class RequirementAdmin {
	private String state;
	private String city;
	private String bloodGroup;
	private String firstName;
	private long contactNumber;
	private int requirementId;
	public RequirementAdmin() {
		super();
	}
	public RequirementAdmin(String state, String city, String bloodGroup, String firstName, long contactNumber,
			int requirementId) {
		super();
		this.state = state;
		this.city = city;
		this.bloodGroup = bloodGroup;
		this.firstName = firstName;
		this.contactNumber = contactNumber;
		this.requirementId = requirementId;
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
	public int getRequirementId() {
		return requirementId;
	}
	public void setRequirementId(int requirementId) {
		this.requirementId = requirementId;
	}
}