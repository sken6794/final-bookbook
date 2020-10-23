package site.itwill.service;

import java.util.List;

import site.itwill.dto.BookIn;
import site.itwill.dto.BookInBook;
import site.itwill.dto.BookOut;
import site.itwill.dto.BookStock;

public interface BookInService {
	public List<BookInBook> getBookInList();
	public List<BookInBook> getBookOutList();
	public List<BookStock> getBookStockList();
	
	void addBookout(BookOut bookout);
	void addBookin(BookIn bookin);
	void modifyStock(BookOut bookout);
	
}
