package site.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.BookDAO;
import site.itwill.dto.Book;

@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public List<Book> getAllBookList() {
		return bookDAO.selectAllBookList();
	}

	@Override
	public int updateBookLoc(Map<String, String> map) {
		return bookDAO.updateBookLoc(map);
	}

	@Override
	public Book selectBook(String bookCode) {
		return bookDAO.selectBook(bookCode);
	}

	@Override
	public int insertBook(Book book) {
		return bookDAO.insertBook(book);
	}

	@Override
	public List<Book> selectBookList() {
		return bookDAO.selectBookList();
	}

	@Override
	public List<Book> selectDynamicBookList(Book book) {
		return bookDAO.selectDynamicBookList(book);
	}
}
