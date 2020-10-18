package site.itwill.dto;

/*
이름     널?       유형     
------ -------- ------ 
STOTAL NOT NULL NUMBER 
SDATE           DATE   
BCODE           NUMBER 
 */

public class Sales {
	private int stotal;
	private String sdate;
	private int bcode;
	
	public Sales() {
		// TODO Auto-generated constructor stub
	}

	public int getStotal() {
		return stotal;
	}

	public void setStotal(int stotal) {
		this.stotal = stotal;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}
	
	
}
