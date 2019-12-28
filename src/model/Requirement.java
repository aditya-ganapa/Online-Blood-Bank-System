package model;

public class Requirement {
	private String hospital;
	private String date;
	private boolean morningSlot;
	private boolean afternoonSlot;
	private boolean eveningSlot;
	public Requirement() {
		super();
	}
	public Requirement(String hospital, String date, boolean morningSlot, boolean afternoonSlot, boolean eveningSlot) {
		super();
		this.hospital = hospital;
		this.date = date;
		this.morningSlot = morningSlot;
		this.afternoonSlot = afternoonSlot;
		this.eveningSlot = eveningSlot;
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
	public boolean isMorningSlot() {
		return morningSlot;
	}
	public void setMorningSlot(boolean morningSlot) {
		this.morningSlot = morningSlot;
	}
	public boolean isAfternoonSlot() {
		return afternoonSlot;
	}
	public void setAfternoonSlot(boolean afternoonSlot) {
		this.afternoonSlot = afternoonSlot;
	}
	public boolean isEveningSlot() {
		return eveningSlot;
	}
	public void setEveningSlot(boolean eveningSlot) {
		this.eveningSlot = eveningSlot;
	}
}