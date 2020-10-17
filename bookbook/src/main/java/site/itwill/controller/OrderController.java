package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.OrderService;
@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(Model model) {
		model.addAttribute("orderList", orderService.getOrderList());
		return "order/order";
	}
	
	@RequestMapping(value="/addOrder", method = RequestMethod.GET)
	public String addOrder() {
		return "order/addOrder";
	}
}
