package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.BookInDAO;
import site.itwill.dto.BookIn;
import site.itwill.dto.BookInBook;
import site.itwill.dto.BookOut;
import site.itwill.dto.BookStock;

@Service
public class BookInServiceImpl implements BookInService{
	
	@Autowired
	private BookInDAO bookInDAO;
	/*
	@Override
	public List<BookIn> getBookInList() {
		
		return bookInDAO.selectBookInList();
	}
	*/
	@Override
	public List<BookInBook> getBookInList() {
		
		return bookInDAO.selectBookInList();
	}
	@Override
	public List<BookInBook> getBookOutList() {
		
		return bookInDAO.selectBookOutList();
	}
	@Override
	public List<BookStock> getBookStockList() {
		
		return bookInDAO.selectStockList();
	}
	
	@Transactional
	@Override
	public void addBookout(BookOut bookout) {
		bookInDAO.insertBookout(bookout);
		
	}
	
	@Transactional
	@Override
	public void addBookin(BookIn bookin) {
		bookInDAO.insertBookin(bookin);
		
	}
	
	@Transactional
	@Override
	public void modifyStock(BookOut bookout) {
		bookInDAO.updateStock(bookout);
		
	}
}
