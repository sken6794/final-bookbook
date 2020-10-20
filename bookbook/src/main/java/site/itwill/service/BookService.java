package site.itwill.service;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Book;

public interface BookService {
	public List<Book> getAllBookList();
	public int updateBookLoc(Map<String, String> map);
	public Book selectBook(String bookCode);
	public int insertBook(Book book);
}
