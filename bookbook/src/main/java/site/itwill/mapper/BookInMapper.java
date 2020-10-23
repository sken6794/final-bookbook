package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.BookIn;
import site.itwill.dto.BookInBook;
import site.itwill.dto.BookOut;
import site.itwill.dto.BookStock;

public interface BookInMapper {
	//public List<BookIn> selectBookInList();
	public List<BookInBook> selectBookInList();
	public List<BookInBook> selectBookOutList();
	public List<BookStock> selectStockList();
	
	//주문 등록 시 출고삽입
	int insertBookout(BookOut bookout);
	//발주 시 입고 삽입
	int insertBookin(BookIn bookin);
	//출고 시 재고 변경
	int updateStock(BookOut bookout);
}
