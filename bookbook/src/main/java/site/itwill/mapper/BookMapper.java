package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Book;

public interface BookMapper {
	public List<Book> selectAllBookList();
	public int updateBookLoc(Map<String, String> map);
}
