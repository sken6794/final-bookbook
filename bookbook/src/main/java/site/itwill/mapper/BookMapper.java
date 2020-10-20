package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Book;

public interface BookMapper {
	public List<Book> selectAllBookList();
	public int updateBookLoc(Map<String, String> map);
	public Book selectBook(String bookCode);
	public int insertBook(Book book);
	public  List<Book> selectBookList();
	public List<Book> selectDynamicBookList(Book book);
	
}
