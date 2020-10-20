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
	private Book book;
	private Order order;
	
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

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}


	
	
}
