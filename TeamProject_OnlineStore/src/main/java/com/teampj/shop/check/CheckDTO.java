package com.teampj.shop.check;

public class CheckDTO {

	String ucode, pcode, indate, scode;
	int bcount, bcode;
	
	public CheckDTO() {
		super();
	}
	public CheckDTO(String ucode, String pcode, String indate, String scode, int bcount, int bcode) {
		super();
		this.ucode = ucode;
		this.pcode = pcode;
		this.indate = indate;
		this.scode = scode;
		this.bcount = bcount;
		this.bcode = bcode;
	}
	public String getUcode() {
		return ucode;
	}
	public void setUcode(String ucode) {
		this.ucode = ucode;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public int getBcount() {
		return bcount;
	}
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}
	public int getBcode() {
		return bcode;
	}
	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	
	
}