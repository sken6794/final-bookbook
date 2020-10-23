package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Book;
import site.itwill.mapper.BookMapper;

@Repository
public class BookDAOImpl implements BookDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Book> selectAllBookList() {
		return sqlSession.getMapper(BookMapper.class).selectAllBookList();
	}

	@Override
	public int updateBookLoc(Map<String, String> map) {
		return sqlSession.getMapper(BookMapper.class).updateBookLoc(map);
	}

	@Override
	public Book selectBook(String bookCode) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(BookMapper.class).selectBook(bookCode);
	}

	@Override
	public int insertBook(Book book) {
		
		return sqlSession.getMapper(BookMapper.class).insertBook(book);
	}

	@Override
	public List<Book> selectBookList() {
		return sqlSession.getMapper(BookMapper.class).selectBookList();
	}

	@Override
	public List<Book> selectDynamicBookList(Book book) {
		return sqlSession.getMapper(BookMapper.class).selectDynamicBookList(book);
	}

	@Override
	public int deleteBook(int num) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(BookMapper.class).deleteBook(num);
	}
}
