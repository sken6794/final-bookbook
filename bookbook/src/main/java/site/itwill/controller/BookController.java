package site.itwill.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/book", method=RequestMethod.GET)
	public String book(Model model) {
		model.addAttribute("bookList", bookService.getAllBookList());
		return "book/book";
	}
	
	@RequestMapping(value="/bookInsert", method = RequestMethod.GET)
	public String bookInsert() {
		return "book/bookInsert";
	}
	
	@RequestMapping(value="/bookSelect", method = RequestMethod.GET)
	public String bookSelect() {
		return "book/bookSelect";
	}
	
	@RequestMapping(value="/chat", method = RequestMethod.GET)
	public String chat() {
		return "chat/chat";
	}
	
	@RequestMapping(value="/chatRoom", method = RequestMethod.GET)
	public String chatRoom() {
		return "chat/chatRoom";
	}
}
