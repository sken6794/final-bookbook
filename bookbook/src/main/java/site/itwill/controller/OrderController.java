package site.itwill.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Member;
import site.itwill.dto.Order;
import site.itwill.dto.PayManage;
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
	
	@RequestMapping("/order_list")
	@ResponseBody
	public List<Order> restOrderJSONList() {
		return orderService.getOrderList();
	}	
	
	@RequestMapping(value="/add_order", method = RequestMethod.GET)
	public String addOrder() {
		return "order/add_order";
	}
	
	@RequestMapping(value="/add_order", method = RequestMethod.POST)
	public String addOrder(@ModelAttribute("order") Order order, Model model) {
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String odate=sdf.format(date);
		order.setOdate(odate);
		
		 if(order.getOid()==null) { 
			 model.addAttribute("message", "ȸ�� ID�� �Է����ּ���."); 
			 return "redirect:/add_order"; 
		 }

		return "redirect:/add_order";
		
	}	
	
	@RequestMapping(value = "/order_delete/{ono}")
	public String orderDelete(@PathVariable int ono) {
		orderService.removeOrder(ono);
		return "redirect:/order";
	}
	
	//�����ȣ �޾Ƽ� ����(�����Ҷ� �ʿ�)
	@RequestMapping(value = "/order_view/{ono}", method = RequestMethod.GET)
	@ResponseBody
	public Order restOrderView(@PathVariable int ono) {
		return orderService.getRestOrder(ono);
	}
	
	//������� ����
	@RequestMapping(value = "/order_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String restOrderModify(@RequestBody Order order) {
		orderService.modifyOrder(order);
		return "success";
	}	
	
	@RequestMapping(value = "/order_search")
	@ResponseBody
	public List<Order> order(@RequestBody Order order) {
		return orderService.getOrder(order);
	}
}
