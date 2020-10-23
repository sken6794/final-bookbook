package site.itwill.dto;
/*
이름     널?       유형           
------ -------- ------------ 
RNO    NOT NULL NUMBER       
RDATE           DATE         
RSTAFF          NUMBER       
RQTY   NOT NULL NUMBER       
RPRICE          NUMBER       
RSTATE          NUMBER
BCODE           NUMBER
*/
public class Request {
	private int rno;
	private String rdate;
	private int rstaff;
	private int rqty;
	private int rprice;
	private int rstate;
	private int bcode;
	private Book book;
	
	public Request() {
		// TODO Auto-generated constructor stub
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getRstaff() {
		return rstaff;
	}

	public void setRstaff(int rstaff) {
		this.rstaff = rstaff;
	}

	public int getRqty() {
		return rqty;
	}

	public void setRqty(int rqty) {
		this.rqty = rqty;
	}

	public int getRprice() {
		return rprice;
	}

	public void setRprice(int rprice) {
		this.rprice = rprice;
	}

	public int getRstate() {
		return rstate;
	}

	public void setRstate(int rstate) {
		this.rstate = rstate;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
}
