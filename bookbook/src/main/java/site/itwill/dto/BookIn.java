package site.itwill.dto;
/*
 이름         널?       유형         
---------- -------- ---------- 
BINNO      NOT NULL NUMBER     
BCODE      NOT NULL NUMBER     
INQUANTITY          NUMBER(20) 
INDATE              DATE 
 */
public class BookIn {
	private int binno; 
	private int bcode;
	private int inquantity;
	private String indate;
	
	public BookIn() {
		// TODO Auto-generated constructor stub
	}

	public int getBinno() {
		return binno;
	}

	public void setBinno(int binno) {
		this.binno = binno;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public int getInquantity() {
		return inquantity;
	}

	public void setInquantity(int inquantity) {
		this.inquantity = inquantity;
	}

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	
}
