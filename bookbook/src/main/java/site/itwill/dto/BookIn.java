package site.itwill.dto;
/*
 이름         널?       유형         
---------- -------- ---------- 
BINNO      NOT NULL NUMBER     
BCODE      NOT NULL NUMBER     
INQTY          NUMBER(20) 
INDATE              VARCHAR2(20)
 */
public class BookIn {
	private int binno; 
	private int bcode;
	private int inqty;
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

	

	public int getInqty() {
		return inqty;
	}

	public void setInqty(int inqty) {
		this.inqty = inqty;
	}

	public String getIndate() {
		return indate;
	}

	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	
}
