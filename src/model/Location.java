package model;

public class Location {
	private String state;
	private String city;
	private String hospital;
	
	public Location() {
		super();
	}
	
	public Location(String state, String city, String hospital) {
		super();
		this.state = state;
		this.city = city;
		this.hospital = hospital;
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

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}	
}