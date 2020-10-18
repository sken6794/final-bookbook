package site.itwill.service;

import java.util.List;

import site.itwill.dto.BookInBook;
import site.itwill.dto.BookStock;

public interface BookInService {
	public List<BookInBook> getBookInList();
	public List<BookInBook> getBookOutList();
	public List<BookStock> getBookStockList();
	
}
