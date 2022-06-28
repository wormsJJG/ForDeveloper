package DTO;

import java.sql.Date;

public class developerDTO {
	private String id;
	private String password;
	private String dName;
	private String dLanguage;
	private Date registerDay;
	private String dPhone;
	private String position;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdLanguage() {
		return dLanguage;
	}
	public void setdLanguage(String dLanguage) {
		this.dLanguage = dLanguage;
	}
	public Date getRegisterDay() {
		return registerDay;
	}
	public void setRegisterDay(Date registerDay) {
		this.registerDay = registerDay;
	}
	public String getdPhone() {
		return dPhone;
	}
	public void setdPhone(String dPhone) {
		this.dPhone = dPhone;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "developerDTO [id=" + id + ", password=" + password + ", dName=" + dName + ", dLanguage=" + dLanguage
				+ ", registerDay=" + registerDay + ", dPhone=" + dPhone + ", position=" + position + "]";
	}
	
	
}
