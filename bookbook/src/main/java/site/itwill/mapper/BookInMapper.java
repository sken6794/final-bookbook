package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.BookIn;
import site.itwill.dto.BookInBook;
import site.itwill.dto.BookStock;

public interface BookInMapper {
	//public List<BookIn> selectBookInList();
	public List<BookInBook> selectBookInList();

	public List<BookInBook> selectBookOutList();
	public List<BookStock> selectStockList();
}
