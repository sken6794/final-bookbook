package site.itwill.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value="/addOrder", method = RequestMethod.GET)
	public String addOrder() {
		return "order/addOrder";
	}
	
	@RequestMapping(value="/addOrder", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("order") Order order) {
		
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String odate=sdf.format(date);
		order.setOdate(odate);
		
		
		/*
		 * if(order.getOid().equals("")) { model.addAttribute("message",
		 * "회원 ID를 입력해주세요."); return "order/addOrder"; }
		 */
		System.out.println("ono ="+order.getOno());
		System.out.println("oid ="+order.getOid());
		System.out.println("oqty ="+order.getOqty());
		System.out.println("bcode ="+order.getBcode());
		System.out.println("odate ="+order.getOdate());
		System.out.println("oprice ="+order.getOprice());
		System.out.println("ostate ="+order.getOstate());
		
		orderService.addOrder(order);
		
		return "redirect:/addOrder";
		
	}
}
