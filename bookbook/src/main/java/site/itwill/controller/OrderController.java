package site.itwill.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.dto.Order;
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
	
	@RequestMapping(value="/add_order", method = RequestMethod.GET)
	public String addOrder() {
		return "order/add_order";
	}
	
	@RequestMapping(value="/add_order", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("order") Order order) {
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String odate=sdf.format(date);
		order.setOdate(odate);
		
		/*
		 * if(order.getOid().equals("")) { model.addAttribute("message",
		 * "회원 ID를 입력해주세요."); return "order/addOrder"; }
		 */
		orderService.addOrder(order);
		
		return "redirect:/add_order";
		
	}
	
	
	@RequestMapping(value = "/order_delete/{ono}")
	public String orderDelete(@PathVariable int ono) {
		orderService.removeOrder(ono);
		return "redirect:/order";
	}
}
