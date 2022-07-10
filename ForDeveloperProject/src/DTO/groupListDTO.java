package DTO;

import java.sql.Date;

public class groupListDTO {
	private String gUid;
	private String gName;
	private String gContent;
	private Date registerDay;
	private String gStatus;
	private String dName;
	
	public String getgUid() {
		return gUid;
	}
	public void setgUid(String gUid) {
		this.gUid = gUid;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public String getgContent() {
		return gContent;
	}
	public void setgContent(String gContent) {
		this.gContent = gContent;
	}
	public Date getRegisterDay() {
		return registerDay;
	}
	public void setRegisterDay(Date registerDay) {
		this.registerDay = registerDay;
	}
	public String getgStatus() {
		return gStatus;
	}
	public void setgStatus(String gStatus) {
		this.gStatus = gStatus;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	
	
}
