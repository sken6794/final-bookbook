package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Book;

public interface BookMapper {
	public List<Book> selectAllBookList();
}
