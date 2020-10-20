package site.itwill.service;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderService {
	void addOrder(Order order);
	void removeOrder(int ono);
	List<Order> getOrderList();
}
