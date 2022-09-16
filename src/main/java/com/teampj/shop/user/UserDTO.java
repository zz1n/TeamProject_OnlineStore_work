package com.teampj.shop.user;

public class UserDTO {

	String ucode, userid, userpw, uname, umobile, uaddress1, uaddress2, uaddress3;
	int uzipcode;
	String uemail;
	int upoint;
	String urgtdate;
	int useyn;
	
	public UserDTO() {
		super();
	}
	public UserDTO(String ucode, String userid, String userpw, String uname, String umobile, String uaddress1,
			String uaddress2, String uaddress3, int uzipcode, String uemail, int upoint, String urgtdate, int useyn) {
		super();
		this.ucode = ucode;
		this.userid = userid;
		this.userpw = userpw;
		this.uname = uname;
		this.umobile = umobile;
		this.uaddress1 = uaddress1;
		this.uaddress2 = uaddress2;
		this.uaddress3 = uaddress3;
		this.uzipcode = uzipcode;
		this.uemail = uemail;
		this.upoint = upoint;
		this.urgtdate = urgtdate;
		this.useyn = useyn;
	}
	public String getUcode() {
		return ucode;
	}
	public void setUcode(String ucode) {
		this.ucode = ucode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	public String getUaddress1() {
		return uaddress1;
	}
	public void setUaddress1(String uaddress1) {
		this.uaddress1 = uaddress1;
	}
	public String getUaddress2() {
		return uaddress2;
	}
	public void setUaddress2(String uaddress2) {
		this.uaddress2 = uaddress2;
	}
	public String getUaddress3() {
		return uaddress3;
	}
	public void setUaddress3(String uaddress3) {
		this.uaddress3 = uaddress3;
	}
	public int getUzipcode() {
		return uzipcode;
	}
	public void setUzipcode(int uzipcode) {
		this.uzipcode = uzipcode;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public int getUpoint() {
		return upoint;
	}
	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	public String getUrgtdate() {
		return urgtdate;
	}
	public void setUrgtdate(String urgtdate) {
		this.urgtdate = urgtdate;
	}
	public int getUseyn() {
		return useyn;
	}
	public void setUseyn(int useyn) {
		this.useyn = useyn;
	}
	
	
	
}