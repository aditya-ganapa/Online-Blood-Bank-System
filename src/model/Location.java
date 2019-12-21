package model;

public class Location {
	private String state;
	private String city;
	public Location() {
		super();
	}
	public Location(String state, String city) {
		super();
		this.state = state;
		this.city = city;
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
}