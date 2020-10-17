package site.itwill.dto;
/*
이름     널?       유형           
------ -------- ------------ 
ONO    NOT NULL NUMBER       
OID    NOT NULL VARCHAR2(20) 
ODATE           DATE         
OQTY            NUMBER       
OPRICE          NUMBER       
OSTATE          NUMBER       
BCODE           NUMBER  
*/
public class Order {
	private int ono;
	private String oid;
	private String odate;
	private int oqty;
	private int oprice;
	private int ostate;
	private Book book;
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public String getOdate() {
		return odate;
	}

	public void setOdate(String odate) {
		this.odate = odate;
	}

	public int getOqty() {
		return oqty;
	}

	public void setOqty(int oqty) {
		this.oqty = oqty;
	}

	public int getOprice() {
		return oprice;
	}

	public void setOprice(int oprice) {
		this.oprice = oprice;
	}

	public int getOstate() {
		return ostate;
	}

	public void setOstate(int ostate) {
		this.ostate = ostate;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
	
}
