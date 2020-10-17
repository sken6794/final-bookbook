package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.OrderDAO;
import site.itwill.dto.Order;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public List<Order> getOrderList() {
		return orderDAO.selectOrderList();
	}

}
