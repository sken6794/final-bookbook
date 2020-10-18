package site.itwill.dto;
/*
 이름       널?       유형     
-------- -------- ------ 
BSTOCKNO NOT NULL NUMBER 
BCODE    NOT NULL NUMBER 
STOCKQTY          NUMBER 
 */
public class BookStock {
	private int bstockno; 
	private int bcode;
	private int stockqty;
	private Book book;
	
	public BookStock() {
		// TODO Auto-generated constructor stub
	}

	public int getBstockno() {
		return bstockno;
	}

	public void setBstockno(int bstockno) {
		this.bstockno = bstockno;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public int getStockqty() {
		return stockqty;
	}

	public void setStockqty(int stockqty) {
		this.stockqty = stockqty;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
	
}
