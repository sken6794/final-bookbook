package site.itwill.dao;

import java.util.List;

import site.itwill.dto.BookIn;
import site.itwill.dto.BookInBook;
import site.itwill.dto.BookOut;
import site.itwill.dto.BookStock;

public interface BookInDAO {
	//public List<BookIn> selectBookInList();
	public List<BookInBook> selectBookInList();
	public List<BookInBook> selectBookOutList();
	public List<BookStock> selectStockList();
	int insertBookout(BookOut bookout);
	int insertBookin(BookIn bookin);
	int updateStock(BookOut bookout);
}
