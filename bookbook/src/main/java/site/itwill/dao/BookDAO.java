package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Book;

public interface BookDAO {
	public List<Book> selectAllBookList();
}
