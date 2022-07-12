package DTO;

import java.sql.Date;

public class groupInfoDTO {
	private String gUid;
	private String gName;
	private String gContents;
	private Date registerDay;
	private String gStatus;
	private String groupleader;
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
	public String getgContents() {
		return gContents;
	}
	public void setgContents(String gContents) {
		this.gContents = gContents;
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
	public String getGroupleader() {
		return groupleader;
	}
	public void setGroupleader(String groupleader) {
		this.groupleader = groupleader;
	}
	
	
}
