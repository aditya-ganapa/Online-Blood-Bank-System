package model;

public class BookSlot {
	private String hospital;
	private String date;
	private String slot;
	private long contactNumber;
	public BookSlot() {
		super();
	}
	public BookSlot(String hospital, String date, String slot, long contactNumber) {
		super();
		this.hospital = hospital;
		this.date = date;
		this.slot = slot;
		this.contactNumber = contactNumber;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSlot() {
		return slot;
	}
	public void setSlot(String slot) {
		this.slot = slot;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
}