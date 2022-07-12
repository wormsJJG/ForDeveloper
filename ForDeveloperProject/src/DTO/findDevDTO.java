package DTO;

public class findDevDTO {
	private String id;
	private String dName;
	private String position;
	private String dLanguage;
	private int endProCnt;
	private String dStatus;
	
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getdLanguage() {
		return dLanguage;
	}
	public void setdLanguage(String dLanguage) {
		this.dLanguage = dLanguage;
	}
	public int getEndProCnt() {
		return endProCnt;
	}
	public void setEndProCnt(int endProCnt) {
		this.endProCnt = endProCnt;
	}
	public String getdStatus() {
		return dStatus;
	}
	public void setdStatus(String dStatus) {
		this.dStatus = dStatus;
	}
	@Override
	public String toString() {
		return "findDevDTO [dName=" + dName + ", position=" + position + ", dLanguage=" + dLanguage + ", endProCnt="
				+ endProCnt + ", dStatus=" + dStatus + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
