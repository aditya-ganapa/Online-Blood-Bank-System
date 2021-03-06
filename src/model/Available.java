package model;

public class Available {
	private String state;
	private String city;
	private int pinCode;
	private String hospital;
	private String bloodGroup;

	public Available() {
		super();
	}

	public Available(String state, String city, int pinCode, String hospital, String bloodGroup) {
		super();
		this.state = state;
		this.city = city;
		this.pinCode = pinCode;
		this.hospital = hospital;
		this.bloodGroup = bloodGroup;
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

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
}