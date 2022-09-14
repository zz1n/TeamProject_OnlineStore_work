package com.teampj.shop.profit;

public class ProfitDTO {

	String ocode, scode, pcode, pname;
	int oprofit, ocount;
	String odate;
	
	public ProfitDTO() {
		super();
	}
	public ProfitDTO(String ocode, String scode, String pcode, String pname, int oprofit, int ocount, String odate) {
		super();
		this.ocode = ocode;
		this.scode = scode;
		this.pcode = pcode;
		this.pname = pname;
		this.oprofit = oprofit;
		this.ocount = ocount;
		this.odate = odate;
	}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getOprofit() {
		return oprofit;
	}
	public void setOprofit(int oprofit) {
		this.oprofit = oprofit;
	}
	public int getOcount() {
		return ocount;
	}
	public void setOcount(int ocount) {
		this.ocount = ocount;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	
	
}