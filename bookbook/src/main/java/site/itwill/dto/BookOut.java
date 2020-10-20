package site.itwill.dto;
/*
 이름          널?       유형     
----------- -------- ------ 
BOUTNO      NOT NULL NUMBER 
BCODE       NOT NULL NUMBER 
OUTQUANTITY          NUMBER 
OUTDATE              DATE 
 */
public class BookOut {
	private int boutno; 
	private int bcode;
	private int outquantity;
	private String outdate;
	
	public BookOut() {
		// TODO Auto-generated constructor stub
	}

	public int getBoutno() {
		return boutno;
	}

	public void setBoutno(int boutno) {
		this.boutno = boutno;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public int getOutquantity() {
		return outquantity;
	}

	public void setOutquantity(int outquantity) {
		this.outquantity = outquantity;
	}

	public String getOutdate() {
		return outdate;
	}

	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}
	
}
