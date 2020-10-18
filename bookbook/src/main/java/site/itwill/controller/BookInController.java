package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.BookInService;

@Controller
public class BookInController {
	
	@Autowired
	private BookInService bookInService;
	
	
	
	
	
	@RequestMapping(value = "/bookout", method = RequestMethod.GET)
	public String bookout(Model model) {
		model.addAttribute("bookOutList", bookInService.getBookOutList());
		return "bookinout/book_out";
	}
	
	@RequestMapping(value = "/bookin", method = RequestMethod.GET)
	public String bookin(Model model) {
		model.addAttribute("bookInList", bookInService.getBookInList());
		return "bookinout/book_in";
	}
	
	@RequestMapping("/stock")
	public String stock(Model model) {
		model.addAttribute("stock", bookInService.getBookStockList());
		return "bookinout/stock_display";
	}
	
	
}
